from django.contrib import admin
from django.contrib.auth.models import Group
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

from .forms import UserCreationForm, UserChangeForm
from .models import CustomUser


class UserAdmin(BaseUserAdmin):
    # Forms for adding and changing user instances
    add_form = UserCreationForm
    form = UserChangeForm

    list_display = ["email", "username", "is_admin", "is_active"]
    list_filter = ["email", "username", "is_admin", "is_active"]
    fieldsets = [
        (None, {"fields": ["email", "username", "password"]}),
        ("Permissions", {"fields": ["is_admin"]}),
    ]

    add_fieldsets = [
        (
            None,
            {
                "classes": ["wide"],
                "fields": ["email", "username", "password1", "password2"],
            },
        ),
    ]
    search_fields = ["email", "username"]
    ordering = ["email"]
    filter_horizontal = []


admin.site.register(CustomUser, UserAdmin)
admin.site.unregister(Group)
