MODULE = Atheme			PACKAGE = Atheme::Sourceinfo

void
success(Atheme_Sourceinfo self, char *message)
CODE:
	command_success_nodata(self, "%s", message);

void
fail(Atheme_Sourceinfo self, int faultcode, char *message)
CODE:
	command_fail(self, faultcode, "%s", message);

Atheme_Service
service(Atheme_Sourceinfo self)
CODE:
	RETVAL = self->service;
OUTPUT:
	RETVAL

Atheme_User
user(Atheme_Sourceinfo self)
CODE:
	RETVAL = self->su;
OUTPUT:
	RETVAL
