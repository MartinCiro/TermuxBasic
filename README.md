# basic
Esta es la Instalacion basica que hago cada vez al instalar termux, todos mis archivos estan guardados en la nube de google drive

# Instalacion
pkg remove game-repo science-repo -y && termux-change-repo && pkg install git -y > /dev/null 2>&1 && clear

history -c && git clone https://github.com/MartinCiro/basic/ && cd basic && chmod 777 1 && clear && bash 1 && exit

# Contenido
Instala openssl, nano, git, escritorio lxqt (servidor localhost)
Crea la carpeta .shortcuts
Reemplaza bash.bashrc con el personalizado
Cambia los repositorios
