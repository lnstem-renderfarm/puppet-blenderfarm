#!/bin/bash
echo "Starting Blender Slave..."
blender --addons netrender -b -P /home/networkrender/blender-slave.py
echo "Blender Slave Exiting..."
