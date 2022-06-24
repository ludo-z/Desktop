#if driver is not trusted --> Download the certificate from the .cat file and install it with this command line : 
certutil.exe -f -addstore "TrustedPublisher" \\path\path\TrustedPublisher.cer

#Install drivers from a folder :
pnputil -i -a \\path\path\driver-0.9.26.0\*.inf
