
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
--AUTO REFRESH WHEN LEAVE A BUFFER
vim.cmd"au BufLeave,CursorHold * NvimTreeRefresh"
lvim.transparent_window = true

vim.api.nvim_set_keymap("n", "<TAB>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-l>",   ":BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>",   ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-x>",   ":BufferClose<CR>", { noremap = true, silent = true })

-- Additional Plugins
lvim.plugins = {
        {"folke/tokyonight.nvim"},
        {"mangeshrex/uwu.vim"},
        {"tomasiser/vim-code-dark"},
        {"sainnhe/sonokai"},
        {"mhartington/oceanic-next"},
        {"gosukiwi/vim-atom-dark"},
        {'pseewald/vim-anyfold'},
        {"morhetz/gruvbox"},
        --Motionhh
        {"mg979/vim-visual-multi"},
       --lsp
        {"nvim-treesitter/nvim-treesitter-angular" },
        {"KabbAmine/vCoolor.vim"},
        {"ap/vim-css-color"},
        {"chrisbra/Colorizer"},
        {"alvan/vim-closetag"},
        {"tpope/vim-surround"}, --muy util para añadir/remover""(){} https://github.com/tpope/vim-surround
        {"tpope/vim-repeat"},
        {
        "folke/trouble.nvim",
                cmd = "TroubleToggle",
        },
        {"Pocco81/AutoSave.nvim",
                config = function()
                require('user.auto_save').config()
                end,

        },
        --TODO config vim easy plug
    --zen mode
    {'junegunn/vim-easy-align'},
        {
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        config = function()
            require("user.zen").config()
        end,
            },
        {
        "kevinhwang91/rnvimr",
        cmd = "RnvimrToggle",
            },
        -- Markdown preview

            {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        ft = "markdown",
    },
   -- Better motion
        {-- press s and press two keys for find keywords
        --press S for find all keywords
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("user.hop").config()
        end,
    },

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
    -- :TodoTrouble

    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("user.todo-comments").config()
        end
    },
    -- Symbols outline - F12
    {
        'simrat39/symbols-outline.nvim',
        cmd = 'SymbolsOutline'
    },
    -- Markers in margin. 'ma' adds marker
    {"kshenoy/vim-signature",
        event = "BufRead",
    },
}
-- sources files
--mover a nvimtree.lua
-- vim.cmd "highlight NvimTreeFolderIcon guifg=darkOrange3 gui=italic"
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.builtin.lualine.options.theme = "curvywurvy"

--Fold config dashoboard and icons git

lvim.builtin.gitsigns.opts.signs.change.text = ''
lvim.builtin.gitsigns.opts.signs.delete.text = ''
lvim.builtin.gitsigns.opts.signs.topdelete.text = ''
lvim.builtin.gitsigns.opts.signs.changedelete.text = ''
lvim.builtin.gitsigns.opts.signs.add.text = ''

lvim.lsp.diagnostics.signs.values = {
  { name = "LspDiagnosticsSignError", text = "" },
  { name = "LspDiagnosticsSignWarning", text = "" },
  { name = "LspDiagnosticsSignHint", text = '' },
  { name = "LspDiagnosticsSignInformation", text = "" },
}
lvim.builtin.dashboard.custom_section = {
    a = {description = {" ﮽  Projects           "}, command = "Telescope projects",  },
    b = {description = {"   Settings           "}, command = ":e ~/.config/lvim/config.lua", },
    c = {description = {"   Recently Used Files"}, command = "Telescope oldfiles", },
    d = {description = {"   New File           "}, command = "DashboardNewFile" },
    e = {description = {"   Ranger             "}, command = "RnvimrToggle"},
    f = {description = {"   Find File          "}, command = "Telescope find_files", },
    g = {description = {"   Find Word          "}, command = "Telescope live_grep", },
    j = {description = {"   Kitty Config       "}, command = ":e ~/.config/kitty/kitty.conf" },
    k = {description = {"   test telescope     "}, command = "lua require 'user.telescope'.grep_notes()" }
    -- g = {description = {"[ g ]   Marks              "}, command = "Telescope marks"},
    -- i = {description = {"[ i ]   Git Status         "}, command = "Telescope git_status" },
    -- k = {description = {"[ k ]   Zshrc              "}, command = ":e ~/.zshrc" },
    -- f = {description = {"  Neovim Config Files"}, command = "Telescope find_files cwd=" .. CONFIG_PATH, },
    -- h = {description = {"  File Browser       "}, command = "Telescope file_browser" },
    -- i = {description = {"  Load Last Session  "}, command = "SessionLoad"},
}

-- You can also use lazy loading so you only get in memory snippets of languages you use
-- require("luasnip/loaders/from_vscode").lazy_load() -- You can pass { path = "./my-snippets/"} as well

vim.cmd('source ~/.config/lvim/lua/user/lualine.lua')
vim.cmd('source ~/.config/lvim/user.vim')
vim.cmd('source ~/.config/lvim/user_keys.vim')
vim.cmd('source ~/.config/lvim/user_colors.vim')
vim.cmd('source ~/.config/lvim/which_keys_user.lua')
