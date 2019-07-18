
# Enter your Ruby code here
def set_layer layout, ml1pin, layer_number, datatype=0
  info = layout.get_info(ml1pin)
  info.layer = layer_number
  info.datatype = datatype
  layout.set_info(ml1pin, info)
end

module MyMacro
 
  include RBA

  app = Application.instance
  mw = app.main_window
  unless lv = mw.current_view
    raise "Shape Statistics: No view selected"
  end
  cell = lv.active_cellview.cell
  layout = cell.layout
  lib = Library::library_by_name('OpenRule1um')
  cell.each_inst{|inst|
    if cell = lib.layout.cell(inst.cell.name) 
      proxy_index = layout.add_lib_cell(lib, cell.cell_index)
      inst.cell = layout.cell(proxy_index)
    end
  }
  # ml1 = layout.find_layer(8,0)
  # ml2 = layout.find_layer(10,0)
  # ml3 = layout.find_layer(12,0)
  ml1label = layout.find_layer(6,1)
  ml1pin = layout.find_layer(6,2)
  ml1obs = layout.find_layer(6,3)
  set_layer(layout, ml1label, 8) if ml1label
  set_layer(layout, ml1pin, 8) if ml1pin
  set_layer(layout, ml1obs, 8) if ml1obs
  ml2label = layout.find_layer(8,1)
  ml2pin = layout.find_layer(8,2)
  ml2obs = layout.find_layer(8,3)
  set_layer(layout, ml2label, 10) if ml2label
  set_layer(layout, ml2pin, 10) if ml2pin
  set_layer(layout, ml2obs, 10) if ml2obs
  ml3label = layout.find_layer(10,1)
  ml3pin = layout.find_layer(10,2)
  set_layer(layout, ml3label, 12) if ml3label
  set_layer(layout, ml3pin, 12) if ml3pin
  if outline = layout.find_layer('OUTLINE')
    layout.delete_layer(outline)
  end
  lv.remove_unused_layers
end