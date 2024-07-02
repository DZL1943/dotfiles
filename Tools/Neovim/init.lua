vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- vim.opt.showmode = false
-- vim.opt.cmdheight = 0
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 5
vim.opt.termguicolors = true
vim.opt.shortmess:append { s = true, I = true }
vim.opt.signcolumn = 'yes'
-- vim.opt.laststatus = 3
-- vim.opt.showtabline = 2
-- vim.opt.completeopt = { "menu", "menuone", "noselect" }
-- vim.opt.swapfile = false
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.tabstop = 4
vim .opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent= true
vim.opt.copyindent = true
vim.opt.whichwrap:append "<>[]hl"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
-- vim.opt.autochdir = true
-- vim.opt.fileencoding = "utf-8"
-- vim.opt.fillchars = { eob = " " }
-- vim.opt.foldenable = true
-- vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 99
-- vim.opt.foldcolumn = "1"
-- vim.opt.wrap = false
-- vim.opt.linebreak = true
-- vim.opt.showbreak = "=>>"
-- vim.opt.colorcolumn = "80"
-- vim.opt.textwidth = 100
-- vim.opt.breakindent = true
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- vim.opt.inccommand = 'split'
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- local options = {}
-- for k,v in pairs(options) do
--     vim.optp[k] = v
-- end

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- require("config.lazy")

vim.cmd.colorscheme "catppuccin"

if vim.g.neovide then
    vim.o.guifont = "Menlo:h18"
    -- vim.opt.linespace = 0
    -- vim.g.neovide_scale_factor = 1.0
    -- vim.g.neovide_text_gamma = 0.0
    -- vim.g.neovide_text_contrast = 0.5
    -- vim.g.neovide_padding_top = 0
    -- vim.g.neovide_padding_bottom = 0
    -- vim.g.neovide_padding_right = 0
    -- vim.g.neovide_padding_left = 0
    -- vim.g.neovide_window_blurred = true
    -- vim.g.neovide_floating_blur_amount_x = 2.0
    -- vim.g.neovide_floating_blur_amount_y = 2.0
    -- vim.g.neovide_floating_shadow = true
    -- vim.g.neovide_floating_z_height = 10
    -- vim.g.neovide_light_angle_degrees = 45
    -- vim.g.neovide_light_radius = 5
    vim.g.neovide_transparency = 0.9
    -- vim.g.neovide_show_border = true
    -- vim.g.neovide_position_animation_length = 0.15
    -- vim.g.neovide_scroll_animation_length = 0.3
    -- vim.g.neovide_scroll_animation_far_lines = 1
    -- vim.g.neovide_hide_mouse_when_typing = false
    -- vim.g.neovide_underline_stroke_scale = 1.0
    -- vim.g.neovide_theme = 'auto'
    -- vim.g.experimental_layer_grouping = false
    -- vim.g.neovide_refresh_rate = 60
    -- vim.g.neovide_refresh_rate_idle = 5
    -- vim.g.neovide_no_idle = true
    -- vim.g.neovide_confirm_quit = true
    -- vim.g.neovide_fullscreen = true
    vim.g.neovide_remember_window_size = true
    -- vim.g.neovide_profiler = false
    -- vim.g.neovide_input_macos_option_key_is_meta = 'only_left'
    -- vim.g.neovide_input_ime = true
    -- vim.g.neovide_touch_deadzone = 6.0
    -- vim.g.neovide_touch_drag_timeout = 0.17
    -- vim.g.neovide_cursor_animation_length = 0.13
    -- vim.g.neovide_cursor_trail_size = 0.8
    -- vim.g.neovide_cursor_antialiasing = true
    -- vim.g.neovide_cursor_animate_in_insert_mode = true
    -- vim.g.neovide_cursor_animate_command_line = true
    -- vim.g.neovide_cursor_unfocused_outline_width = 0.125
    -- vim.g.neovide_cursor_smooth_blink = false
    -- vim.g.neovide_cursor_vfx_mode = ""
    -- vim.g.neovide_cursor_vfx_mode = "railgun"
    -- vim.g.neovide_cursor_vfx_mode = "torpedo"
    -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
    -- vim.g.neovide_cursor_vfx_mode = "sonicboom"
    -- vim.g.neovide_cursor_vfx_mode = "ripple"
    -- vim.g.neovide_cursor_vfx_mode = "wireframe"
    -- vim.g.neovide_cursor_vfx_opacity = 200.0
    -- vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
    -- vim.g.neovide_cursor_vfx_particle_density = 7.0
    -- vim.g.neovide_cursor_vfx_particle_speed = 10.0
    -- vim.g.neovide_cursor_vfx_particle_phase = 1.5
    -- vim.g.neovide_cursor_vfx_particle_curl = 1.0
end