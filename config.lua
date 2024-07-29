-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.keys.normal_mode["<C-r>"] = "<cmd>ToggleTerm size=30 direction=horizontal<CR>"

vim.api.nvim_create_user_command("ToggleTermSendCurrentLineNoTrim",
  function(opts)
    require("toggleterm").send_lines_to_terminal("single_line", false, opts.args)
  end,
  { range = true, nargs = "?", force = true }
)
vim.api.nvim_create_user_command("ToggleTermSendVisualLinesNoTrim",
  function(opts)
    require("toggleterm").send_lines_to_terminal("visual_lines", false, opts.args)
  end,
  { range = true, nargs = "?", force = true }
)

lvim.keys.normal_mode["<C-m>"] = "<cmd>ToggleTermSendCurrentLineNoTrim<CR>"
-- lvim.keys.normal_mode["<C-m>"] = "<cmd>ToggleTermSendCurrentLine<CR>"
-- lvim.keys.visual_mode["<C-m>"] = "<cmd>TermExec cmd='bash' open=0<CR><cmd>ToggleTermSendVisualLines<CR>"
lvim.keys.visual_mode["<C-m>"] = "<cmd>ToggleTermSendVisualLinesNoTrim<CR>"

lvim.builting.which_key.mappings["r"] = {
  name = "Run",
  p = {
    "<cmd>TermExec cmd='python' open=0<CR><cmd>ToggleTermSendCurrentLine<CR><cmd>ToggleTerm<CR>",
    "Python REPL",
  },
  b = {
    "<cmd>TermExec cmd='bash' open=0<CR><cmd>ToggleTermSendCurrentLine<CR><cmd>ToggleTerm<CR>",
    "Bash REPL",
  }
}


