@echo off
echo.
echo.
echo.
echo Preparing to generate Silicon Labs Keys and Flashing them to Device!!
echo Make sure that Commander is added to your System's Path enviroment!
echo Please press any key to continue.....
echo.
pause

commander util genkey --type ecc-p256 --privkey app-sign-key.pem --pubkey app-sign-key.pem.pub
commander util keytotoken app-sign-key.pem.pub --outfile app-sign-key.pem-token.txt
commander util genkey --type aes-ccm --outfile app-encrypt-key.txt

echo Flashing Key to Device
commander flash --tokengroup znet --tokenfile app-encrypt-key.txt --tokenfile app-sign-key.pem-token.txt

goto ENDOFSCRIPT

:ERRORMISSINGPARAMETER
echo.
echo Error! Missing parameter(s)

:ENDOFSCRIPT
echo.
echo End of script!
echo.
echo.



    