user:
	useradd -m minecraft

install:
	cp start.sh stop.sh /home/minecraft
	chown minecraft:minecraft /home/minecraft/start.sh
	chown minecraft:minecraft /home/minecraft/stop.sh
	chmod +x /home/minecraft/start.sh
	chmod +x /home/minecraft/stop.sh
	cp minecraft.service /etc/systemd/system/

papermc:
	wget -O /home/minecraft/paper-1.17.1-381.jar https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/381/downloads/paper-1.17.1-381.jar
	chown minecraft:minecraft /home/minecraft/paper-1.17.1-381.jar
	echo "eula=true" > /home/minecraft/eula.txt
	chown minecraft:minecraft /home/minecraft/eula.txt

all: user papermc install
