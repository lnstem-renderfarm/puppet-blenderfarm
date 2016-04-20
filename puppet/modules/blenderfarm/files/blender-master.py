import bpy
import os
import time
import netrender
from netrender.utils import *
bpy.data.scenes["Scene"].render.engine = "NET_RENDER"
# for master
bpy.data.scenes["Scene"].network_render.mode = "RENDER_MASTER"
# "knox" spelled on a phone keypad
bpy.data.scenes["Scene"].network_render.server_port = 5669

# then
bpy.ops.render.netclientstart()

