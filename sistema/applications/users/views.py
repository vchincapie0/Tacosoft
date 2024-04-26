#Importación de Librerias
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404
from django.contrib.auth.hashers import make_password
from django.contrib import messages
from django.contrib.auth.views import LoginView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import  redirect
from django.views.generic import View,ListView,UpdateView, FormView, DeleteView
from django.views.generic.edit import FormView
from django.urls import reverse_lazy,reverse

#Importacion modelos y formularios
from .models import User, UserAudit
from .forms import UserRegisterForm, UserUpdateForm 

# Create your views here.

class UsersListView(LoginRequiredMixin, ListView):
    '''vista que muestra todos los usuarios registrados'''
    model = User
    template_name = "usuarios/list_user.html"
    login_url=reverse_lazy('users_app:login')
    paginate_by=5
    context_object_name='usuarios'

    def get_queryset(self):
        palabra_clave= self.request.GET.get("kword",'')
        lista = User.objects.filter(
            name__icontains = palabra_clave,
            deleted=False # Solo usuarios activos
        )
        return lista

class UserRegisterView(LoginRequiredMixin,FormView):
    '''Vista que registra usuarios del modelo user'''
    template_name ='usuarios/add_user.html'
    login_url=reverse_lazy('users_app:login')
    form_class=UserRegisterForm
    success_url=reverse_lazy('users_app:list_user')

    def form_valid(self, form):
        '''Función para guardar los datos del usuario'''
        # Obtener los datos del formulario
        username = form.cleaned_data['username']
        name = form.cleaned_data['name']
        last_name = form.cleaned_data['last_name']
        password = form.cleaned_data['password']
        is_admin = form.cleaned_data['is_admin']
        is_employee = form.cleaned_data['is_employee']

        # Crear el usuario en la base de datos
        User.objects.create_user(
            username=username,
            name=name,
            last_name=last_name,
            password=password,
            is_admin=is_admin,
            is_employee=is_employee,
        )

        # Agregar un mensaje de éxito con el nombre de usuario
        messages.success(self.request, f'¡El usuario {username} se ha agregado correctamente!')

        return super(UserRegisterView, self).form_valid(form)
    
class UserUpdateView(LoginRequiredMixin, UpdateView):
    '''Vista para actualizar los datos de user'''
    model = User
    template_name = "usuarios/update_user.html"
    login_url=reverse_lazy('users_app:login')
    form_class=UserUpdateForm
    success_url= reverse_lazy('users_app:list_user')

    def get_object(self, queryset=None):
        # Obtener el usuario basado en el parámetro pk de la URL
        pk = self.kwargs.get('pk')
        return get_object_or_404(User, pk=pk)

    def form_valid(self, form):
        # Obtener el usuario actual a actualizar
        user = form.save(commit=False)

        # Obtener la nueva contraseña del formulario
        new_password = form.cleaned_data.get('password')

        if new_password:
            # Encriptar la nueva contraseña antes de guardarla
            user.password = make_password(new_password)
            username = user.username

        # Guardar los cambios en la base de datos
        user.save()

        # Agregar un mensaje de éxito con el nombre de usuario
        messages.success(self.request, f'¡Los cambios de {username} se han guardado correctamente!')

        return super().form_valid(form)

class UserDeleteView(LoginRequiredMixin, DeleteView):
    '''Vista para borrar user'''
    model = User
    template_name = "usuarios/delete_user.html"
    login_url=reverse_lazy('users_app:login')
    success_url= reverse_lazy('users_app:list_user')

    def delete(self, request, *args, **kwargs):
        # Obtener el usuario a eliminar
        user = self.get_object()
        username = user.username

        # Realizar la eliminación (borrado lógico)
        user.delete()

        # Agregar un mensaje de éxito con el nombre de usuario
        messages.success(self.request, f'¡El usuario {username} se ha eliminado correctamente!')

        return redirect(self.success_url)

class LogIn(LoginView):
    '''Vista para login'''
    template_name = 'usuarios/login.html'
    success_url = reverse_lazy('home_app:home')

    def form_valid(self, form):
        # Recoge los datos del formulario
        username = form.cleaned_data['username']
        password = form.cleaned_data['password']

        # Autentica al usuario utilizando el sistema de autenticación de Django
        user = authenticate(username=username, password=password)

        if user is not None:
            # Inicia sesión para el usuario autenticado
            login(self.request, user)
            return redirect(self.get_success_url())

class LogOut(View):
    '''Vista para cerrar sesion'''
    def get(self,request,*args,**kwargs):
        logout(request)

        return HttpResponseRedirect(
            reverse('users_app:login')
        )
    
class UserAuditListView(LoginRequiredMixin, ListView):
    model= UserAudit
    template_name='usuarios/useraudit.html'
    paginate_by=5
    context_object_name='auditoria'

    # def get_queryset(self):
    #     palabra_clave= self.request.GET.get("kword",'')
    #     lista = User.objects.filter(
    #         name__user__name__icontains = palabra_clave
    #     )
    #     return lista