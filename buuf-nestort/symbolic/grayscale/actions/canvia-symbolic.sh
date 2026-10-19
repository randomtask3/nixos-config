#!/nix/store/7ik8057hajl6vq9j40h3jracxjn0bb5x-bash-5.3p15/bin/bash
#
#elimina una icona symbolic en svg i l'enllaça amb l'original
#no comprova res de res, millor fer-ho bé!
echo Executa això:
echo rm $1-symbolic.svg
echo ln -s $1.png $1-symbolic.png

rm $1-symbolic.svg
ln -s $1.png $1-symbolic.png