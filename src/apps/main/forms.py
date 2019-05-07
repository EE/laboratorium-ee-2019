from django import forms


class ContactForm(forms.Form):
    from_email = forms.EmailField(required=True, widget=forms.TextInput(attrs={'placeholder': 'your email'}))
    subject = forms.CharField(required=True, widget=forms.TextInput(attrs={'placeholder': 'choose subject'}))
    message = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'how can we help?'}), required=True)
