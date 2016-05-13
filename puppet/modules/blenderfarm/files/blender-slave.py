import bpy
import os
import time
import netrender
from netrender.utils import *
bpy.data.scenes["Scene"].render.engine = "NET_RENDER"
# for slave
bpy.data.scenes["Scene"].network_render.mode = "RENDER_SLAVE"
bpy.data.scenes["Scene"].network_render.server_address = "jabba-masta-00.knoxschools.ad"
# "knox" on a keypad
bpy.data.scenes["Scene"].network_render.server_port = 5669

bpy.data.scenes["Scene"].network_render.use_slave_thumb = True
bpy.data.scenes["Scene"].network_render.slave_tags = "headless" 

bpy.data.scenes["Scene"].network_render.slave_tags = bpy.data.scenes["Scene"].network_render.slave_tags + str(bpy.app.version[0]) + "." + str(bpy.app.version[1]) + str(bpy.app.version_char)

# then
bpy.ops.render.netclientstart()
