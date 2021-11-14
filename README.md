# Minecraft Dedicated Server Automation
Minecraft dedicated server scripts, systemd services, backups, overall automation

## Requirements
 - Ubuntu 20.04 (can be ported to other OSes)
 - tmux
 - wget
 - openjdk-17-jre-headless
 - make (optional)

## Quick installation

### Automatic
```
git clone https://github.com/d3suu/MinecraftDedicatedServerAutomation
cd MinecraftDedicatedServerAutomation
sudo make all
```

### Manual
```
# As root
useradd -m minecraft
git clone https://github.com/d3suu/MinecraftDedicatedServerAutomation
cd MinecraftDedicatedServerAutomation
cp start.sh stop.sh /home/minecraft
chown minecraft:minecraft /home/minecraft/start.sh
chown minecraft:minecraft /home/minecraft/stop.sh
chmod +x /home/minecraft/start.sh
chmod +x /home/minecraft/stop.sh
cp minecraft.service /etc/systemd/system/
wget -O /home/minecraft/paper-1.17.1-381.jar https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/381/downloads/paper-1.17.1-381.jar
chown minecraft:minecraft /home/minecraft/paper-1.17.1-381.jar
echo "eula=true" > /home/minecraft/eula.txt
chown minecraft:minecraft /home/minecraft/eula.txt
systemctl minecraft enable
```

## Managing service

Start service with:
```
service minecraft start
```

Stop service with:
```
service minecraft stop
```
