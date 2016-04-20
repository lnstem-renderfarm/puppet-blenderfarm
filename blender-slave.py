import bpy
import os
import time
import netrender
from netrender.utils import *
bpy.data.scenes["Scene"].render.engine = "NET_RENDER"
# for slave
py.data.scenes["Scene"].network_render.mode = "RENDER_SLAVE"
bpy.data.scenes["Scene"].network_render.server_address = "jabba-masta-00.knoxschools.ad"
# "knox" on a keypad
bpy.data.scenes["Scene"].network_render.server_port = 5669

# then
bpy.ops.render.netclientstart()
