var f, fstr;
fstr = ds_grid_write(global.unlock);

f = file_text_open_write(FILE_UNLOCK);
file_text_write_string(f, fstr);
file_text_close(f);
