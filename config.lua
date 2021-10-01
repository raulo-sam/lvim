--my config
lvim.colorscheme                     = "onedarker"
lvim.line_wrap_cursor_movement       = false
-- general
lvim.leader                          = "space"
lvim.log.level                       = "warn"
lvim.format_on_save                  = false
lvim.builtin.nvimtree.ignore         = { ".git",".cache" }
lvim.builtin.nvimtree.follow         = 0
lvim.builtin.nvimtree.hide_dotfiles  = 0
lvim.builtin.nvimtree.git_hl         = 1
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.indent_markers = 1
lvim.builtin.dashboard.active        = true
lvim.builtin.terminal.active         = true
lvim.builtin.nvimtree.side           = "left"
lvim.builtin.lualine.style           = "lvim" -- or "none"
lvim.builtin.lualine.options.theme   = "sonokai"
lvim.builtin.autopairs.active        = true-- or "none"
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
-- add your own keymapping
lvim.keys.normal_mode["<C-z>"] = ""--prevent to suspend lvim
lvim.keys.normal_mode["<S-z>"] = ""--prevent to suspend lvim
lvim.keys.insert_mode["kk"] = "<Esc>"
lvim.builtin.nvimtree.root_folder_modifier = "~/Documentos"

lvim.builtin.which_key.setup.plugins.presets = {
          operators = false, -- adds help for operators like d, y, ...
          motions = false, -- adds help for motions
          text_objects = false, -- help for text objects triggered after entering an operator
          windows = true, -- default bindings on <c-w>
          nav = true, -- misc bindings to work with windows
          z = true, -- bindings for folds, spelling and others prefixed with z
          g = true, -- bindings for prefixed with g
}

 lvim.builtin.which_key.setup.window = {

        border = "shadow", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 1, 1, 1 }, -- extra window margin [top, right, bottom, left]
        padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
}
--AUTO REFRESH WHEN LEAVE A BUFFER
vim.cmd"au BufLeave * NvimTreeRefresh"
lvim.transparent_window = true
vim.cmd"au ColorScheme * hi Normal ctermbg=none guibg=none"
vim.cmd"au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red"

vim.api.nvim_set_keymap("n", "<TAB>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>",   ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-x>",   ":BufferClose<CR>", { noremap = true, silent = true })

lvim.builtin.lualine.options.theme = "curvywurvy"
--Fold config dashoboard and icons git
lvim.builtin.gitsigns.opts.signs.change.text = ''
lvim.builtin.gitsigns.opts.signs.delete.text = ''
lvim.builtin.gitsigns.opts.signs.topdelete.text = ''
lvim.builtin.gitsigns.opts.signs.changedelete.text = ''
lvim.builtin.gitsigns.opts.signs.add.text = ''

lvim.builtin.dashboard.custom_section = {
    a = {description = {" ﮽  Projects           "}, command = "Telescope projects",  },
    b = {description = {"   Settings           "}, command = ":e ~/.config/lvim/config.lua", },
    c = {description = {"   Recently Used Files"}, command = "Telescope oldfiles", },
    d = {description = {"   New File           "}, command = "DashboardNewFile" },
    e = {description = {"   Ranger             "}, command = "RnvimrToggle"},
    f = {description = {"   Find File          "}, command = "Telescope find_files", },
    g = {description = {"   Find Word          "}, command = "Telescope live_grep", },
    -- j = {description = {"   Kitty Config       "}, command = ":e ~/.config/kitty/kitty.conf" },
    -- k = {description = {"   test telescope     "}, command = "lua require 'user.telescope'.grep_notes()" }
    -- g = {description = {"[ g ]   Marks              "}, command = "Telescope marks"},
    -- i = {description = {"[ i ]   Git Status         "}, command = "Telescope git_status" },
    -- k = {description = {"[ k ]   Zshrc              "}, command = ":e ~/.zshrc" },
    -- f = {description = {"  Neovim Config Files"}, command = "Telescope find_files cwd=" .. CONFIG_PATH, },
    -- h = {description = {"  File Browser       "}, command = "Telescope file_browser" },
    -- i = {description = {"  Load Last Session  "}, command = "SessionLoad"},
}





lvim.plugins = {
        {"mattn/emmet-vim"},
        {"kdheepak/lazygit.nvim"},
        {"skywind3000/vim-quickui"},
        {"folke/tokyonight.nvim"},
        {"mangeshrex/uwu.vim"},
        {"tomasiser/vim-code-dark"},
        {"sainnhe/sonokai"},
        {"mhartington/oceanic-next"},
        {"gosukiwi/vim-atom-dark"},
        {'pseewald/vim-anyfold'},
        {"morhetz/gruvbox"},
        {"mg979/vim-visual-multi"},
        {"KabbAmine/vCoolor.vim"},
        {"ap/vim-css-color"},
        {"chrisbra/Colorizer"},
        {"alvan/vim-closetag"},
        {"tpope/vim-surround"}, --muy util para añadir/remover""(){}
        {"tpope/vim-repeat"},
        {"tpope/vim-rhubarb" },
        {"tpope/vim-fugitive" },
        {"junegunn/gv.vim" },
        {"mhinz/vim-startify"},
        {"folke/trouble.nvim", cmd = "TroubleToggle", },
        {"junegunn/vim-easy-align"},
        {"folke/zen-mode.nvim",
        cmd = "ZenMode", config = function() require("user.zen").config()
        end, },
        { "kevinhwang91/rnvimr", cmd = "RnvimrToggle", },
        -- Markdown preview
        { "iamcco/markdown-preview.nvim",
        run = "cd app && npm install", ft = "markdown",},
        { "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim", config = function()
            require("user.todo-comments").config() end
        },
    -- Symbols outline - F12
        {"simrat39/symbols-outline.nvim", cmd = 'SymbolsOutline' },
    -- Markers in margin. 'ma' adds marker
        {"kshenoy/vim-signature", event = "BufRead", },
        {-- press s and press two keys for find keywords
        --press S for find all keywords
        "phaazon/hop.nvim", event = "BufRead", config = function() require("user.hop").config()
        end, },
    {'jiangmiao/auto-pairs'},
}


    -- :TodoTrouble
 vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
 vim.cmd('source ~/.config/lvim/user/user.vim')
 vim.cmd('source ~/.config/lvim/user/user_keys.vim')
 vim.cmd('source ~/.config/lvim/user/user_colors.vim')
 vim.cmd('source ~/.config/lvim/user/which_keys_user.lua')
 vim.cmd('source ~/.config/lvim/user/vim-quickui.vim')
 vim.cmd('source ~/.config/lvim/user/startify.vim')
  -- Todo comments.
    -- FIX:Something to describe.
    -- FIXME: Something to describe.
    -- BUG:Something to describe.
    -- FIXIT: Something to describe.
    -- ISSUE: Something to describe.
    -- TODO:Something to describe.
    -- HACK:Something to describe.
    -- WARN:Something to describe.
    -- WARNING:Something to describe.
    -- XXX:Something to describe.
    -- PERF:Something to describe.
    -- OPTIM:Something to describe.
    -- PERFORMANCE:Something to describe.
    -- OPTIMIZE:Something to describe.
    -- NOTE:Something to describe.
    -- INFO:Something to describe.
    -- TEST: Test something.
    -- OK: Something.
    -- ISH: Something.
    -- BAD: Something.
    -- :TodoQuickFix
    -- :TodoTelescope
 vim.cmd [[highlight BufferVisibleMod guifg=#d8dee9 guibg=#4c566a]]
  vim.cmd [[highlight BufferCurrentMod guifg=#d8dee9 guibg=#2e3440 gui=bold]]
  vim.cmd [[highlight BufferInactiveMod guifg=#d8dee9 guibg=#3b4252]]

