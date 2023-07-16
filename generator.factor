USING: io os.shell ;

: generate-qr-code ( text filename -- )
  [ "echo " swap " | qrencode -o " swap " -s 10" append sh-quiet ] with-output-file ;

! Example usage
"Hello, world!" "qrcode.png" generate-qr-code
