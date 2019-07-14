
# Enter your Ruby code here

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

end