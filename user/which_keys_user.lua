-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>SymbolsOutline<CR>", "SymbolsOutline" }
    -- "<cmd>SymbolsOutline<CR>",                          "Menu quick"
lvim.builtin.which_key.mappings["tr"] = {
  name = "+Trouble",
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}
lvim.builtin.which_key.mappings["tt"] = {
        name = "Telescope",
  w = { "<cmd>Telescope live_grep<cr>", "search word" },
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  t = { "<cmd>Telescope tags<cr>", "Tags" },
  o = { "<cmd>Telescope oldfiles<cr>", "Old files" },
  m = { "<cmd>Telescope marks<cr>", "Marks" },
  a = { "<cmd>Telescope lsp_code_actions<cr>", "Actions Code" },
  d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
  r = { "<cmd>Telescope lsp_references<cr>", "References" },
}
-- Additional Leader bindings for WhichKey and key mappings {{{1
lvim.builtin.which_key.mappings["r"] = {
    "<cmd>RnvimrToggle<CR>",                             "Ranger"
}
lvim.builtin.which_key.mappings["z"] = {
    "<cmd>ZenMode<CR>",                             "Zen Mode"
}
lvim.builtin.which_key.mappings["m"] = {
    name = "Menu Quick",
    m= {"<cmd>:call quickui#menu#open()<cr>","Menu bar"},
    w = {"<cmd>:call quickui#tools#clever_context('w', g:context_menu_w, {})<cr> ","Menu window"},
    f = {"<cmd>:call quickui#tools#clever_context('f', g:context_menu_f, {})<cr> ","Menu file"},
}
lvim.builtin.which_key.mappings["<Space>"] = {
    "<cmd><Esc><CR>",                "Esc"
}
lvim.builtin.which_key.mappings["o"] = {
    "<cmd>Startify<CR>",                "Starify"
}
lvim.builtin.which_key.mappings["ñ"] = {
    "<cmd>ToggleTerm direction=horizontal<CR>",                "Terminal"
}
-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end
