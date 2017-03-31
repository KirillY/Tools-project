from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


class MyRegistrationForm(UserCreationForm):
    email = forms.EmailField(required=True)
    first_name = forms.CharField(required=False)
    last_name = forms.CharField(required=False)

    class Meta:
        model = User
        #the most important Meta fields attribute - define form fields
        fields = ('username', 'email', 'password1', 'password2', 'last_name', 'first_name') #password is added in the form in any case
        # fields = ('password',)

    def save(self, commit=True):
        user = super(MyRegistrationForm, self).save(commit=False)
        user.email = self.cleaned_data['email']
        user.first_name = self.cleaned_data['first_name']
        user.last_name = self.cleaned_data['last_name']
        if commit:
            user.save()
        return user

    # username = forms.CharField(help_text='', widget=forms.TextInput(attrs={'class': 'form-control'}))
    #
    # class Meta:
    #     model = User
    #     # fields = ('username', 'email', 'password1', 'password2', 'first_name')
    #     fields = ('username', 'email', 'password1', 'password2', 'first_name', 'last_name')
    #     # fields = ('__all__')