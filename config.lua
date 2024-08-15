-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["<C-s>"] = "<ESC>:w<cr>:i<cr>"
-- lvim.keys.normal_mode["<C-r>"] = "<cmd>ToggleTerm size=30 direction=horizontal<CR>"

-- vim.api.nvim_create_user_command("ToggleTermSendCurrentLineNoTrim",
--   function(opts)
--     require("toggleterm").send_lines_to_terminal("single_line", false, opts.args)
--   end,
--   { range = true, nargs = "?", force = true }
-- )
-- vim.api.nvim_create_user_command("ToggleTermSendVisualLinesNoTrim",
--   function(opts)
--     require("toggleterm").send_lines_to_terminal("visual_lines", false, opts.args)
--   end,
--   { range = true, nargs = "?", force = true }
-- )

-- lvim.keys.normal_mode["<C-m>"] = "<cmd>ToggleTermSendCurrentLineNoTrim<CR>"
-- -- lvim.keys.normal_mode["<C-m>"] = "<cmd>ToggleTermSendCurrentLine<CR>"
-- -- lvim.keys.visual_mode["<C-m>"] = "<cmd>TermExec cmd='bash' open=0<CR><cmd>ToggleTermSendVisualLines<CR>"
-- lvim.keys.visual_mode["<C-m>"] = "<cmd>ToggleTermSendVisualLinesNoTrim<CR>"

-- lvim.builting.which_key.mappings["r"] = {
--   name = "Run",
--   p = {
--     "<cmd>TermExec cmd='python' open=0<CR><cmd>ToggleTermSendCurrentLine<CR><cmd>ToggleTerm<CR>",
--     "Python REPL",
--   },
--   b = {
--     "<cmd>TermExec cmd='bash' open=0<CR><cmd>ToggleTermSendCurrentLine<CR><cmd>ToggleTerm<CR>",
--     "Bash REPL",
--   }
-- }


-- install plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Trouble",
  x = { "<cmd>Trouble diagnostics toggle<cr>", "Diagnostics" },
  X = { "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", "Buffer Diagnostics (Trouble)" },
  s = { "<cmd>Trouble symbols toggle focus=false<cr>", "Symbols (Trouble)" },
  l = { "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", "LSP Definitions / references / ... (Trouble)" },
  L = { "<cmd>Trouble loclist toggle<cr>", "Location List (Trouble)" },
  Q = { "<cmd>Trouble qflist toggle<cr>", "Quickfix List (Trouble)" },
}

-- automatically install python syntax highlighting
lvim.builtin.treesitter.ensure_installed = {
  "python",
}

-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py" }

-- setup linting
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", filetypes = { "python" } } }

-- -- setup debug adapter
-- lvim.builtin.dap.active = true
-- local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
-- pcall(function()
--   require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
-- end)

-- -- setup testing
-- require("neotest").setup({
--   adapters = {
--     require("neotest-python")({
--       -- Extra arguments for nvim-dap configuration
--       -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
--       dap = {
--         justMyCode = false,
--         console = "integratedTerminal",
--       },
--       args = { "--log-level", "DEBUG", "--quiet" },
--       runner = "pytest",
--     })
--   }
-- })


-- lvim.builtin.which_key.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>",
--   "Test Method" }
-- lvim.builtin.which_key.mappings["dM"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
--   "Test Method DAP" }
-- lvim.builtin.which_key.mappings["df"] = {
--   "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" }
-- lvim.builtin.which_key.mappings["dF"] = {
--   "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" }
-- lvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }


-- -- binding for switching
-- lvim.builtin.which_key.mappings["C"] = {
--   name = "Python",
--   c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
-- }
