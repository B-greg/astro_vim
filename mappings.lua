-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
--
-- local get_icon = utils.get_icon
local utils = require "user.utils"
local get_icon = utils.get_icon

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command

    -- Telescope
    ["<C-p>"] = { "<cmd>Telescope fd<CR>", desc = "Activates Telescope fd" },
    ["<M-p>"] = { "<cmd>Telescope commands<CR>", desc = "Activates Telescope commands" },
    ["<C-f>"] = { "<cmd>Telescope live_grep<CR>", desc = "Activates Telescope live_grep" },


    -- Spectre
    ["<leader>fs"] = {desc = "Spectre"},
    ["<leader>fss"] = {'<cmd>lua require("spectre").toggle()<CR>',  desc = "Toggle Spectre"},
    ["<leader>fsp"] = {'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',  desc = "Search on current file"},
    ["<leader>fsw"] = {'<cmd>lua require("spectre").open_visual({select_word=true})<CR>',  desc = "Search current word"},


    -- Neotest
    ["<leader>T"] = {desc = get_icon("󰂓", "", 1) .. "Test"},
    ["<leader>Tr"] = {'<cmd>lua require("neotest").run.run()<CR>', desc = "Run test under cursor"},
    ["<leader>Tf"] = {'<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', desc = get_icon("󰸩", "", 1) .. "Run test current file"},
    ["<leader>Ts"] = {'<cmd>lua require("neotest").summary.toggle()<CR>', desc = "Toogle test summary"},
    ["<leader>To"] = {'<cmd>lua require("neotest").output.open()<CR>', desc = "Open output"},
    ["<leader>TO"] = {'<cmd>lua require("neotest").output_panel.toggle()<CR>', desc = "Toogle output panel"},
    ["<leader>Td"] = {'<cmd>lua require("neotest").run.run({strategy = "dap"})<CR>', desc = "Debug test under cursor"},

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {

    ["<leader>sw"] = {'<esc><cmd>lua require("spectre").open_visual()<CR>',  desc = "Search current word"},
  }
}
