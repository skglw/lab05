#!/bin/lua5.3
lgi = require 'lgi'
gtk = lgi.Gtk
gtk.init()


bld = gtk.Builder()
bld:add_from_file('lab05.glade')
ui = bld.objects

ui.wnd1.title = 'lab-05-zhuravleva'
ui.wnd1.on_destroy = gtk.main_quit

function ui.btnOpen:on_clicked(...)
ui.wnd2:show_all()
end

function ui.btnDialog:on_clicked(...)
test = gtk.MessageDialog{}
end

function ui.btnClose:on_clicked(...)
ui.wnd2:hide()
end


ui.wnd1:show_all()
gtk.main()
