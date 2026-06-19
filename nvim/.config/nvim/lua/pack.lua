vim.pack.add({"https://github.com/mofiqul/dracula.nvim"})
vim.cmd.colorscheme("dracula")



vim.pack.add({"https://github.com/nvim-mini/mini.nvim"})
-- mini files
require("mini.files").setup({
    mappings = {
        go_in = "<S-L>",
        go_out = "<S-H>",
    },
})

vim.keymap.set("n", "-", "<cmd>lua MiniFiles.open()<CR>", { desc = "Toggle mini file explorer" })
vim.keymap.set("n", "<leader>-", function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
    MiniFiles.reveal_cwd()
end, { desc = "Toggle into currently opened file" })

--mini notify
--require("mini.notify").setup({
	-- only show messages
--    content = {
--        format = function(notif)
--            return notif.msg
--        end,
--    },
--})




--- mini picker ---
local MiniPick = require("mini.pick")
local MiniExtra = require("mini.extra")
MiniPick.setup()
MiniExtra.setup()

-- keymaps
vim.keymap.set("n", "<leader>pf", function() MiniPick.builtin.files() end, { desc = "Mini File Picker" })
vim.keymap.set("n", "<leader>ps", function() MiniPick.builtin.grep({ pattern = vim.fn.expand("<cword>") }) end, { desc = "Grep word/Search word" })
vim.keymap.set("n", "<leader>vh", function() MiniPick.builtin.help() end, { desc = "Mini Help" })

vim.keymap.set("n", "<leader>xx", function() MiniExtra.pickers.diagnostic() end, { desc = "Mini Picker Diagnostics" })
vim.keymap.set("n", "<leader>pk", function() MiniExtra.pickers.keymaps() end, { desc = 'Search keymaps' })

--- mini completions --- 
require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
    }
})

-- pairing closing brackets and stuff
local MiniPairs = require("mini.pairs")
MiniPairs.setup()


vim.pack.add {
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" }
}

require("tree-sitter-manager").setup({
  -- Default Options
  -- ensure_installed = {}, -- list of parsers to install at the start of a neovim session. If set to "all", install all parsers.
  -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
  -- auto_install = false, -- if enabled, install missing parsers when editing a new file
  -- highlight = true, -- treesitter highlighting is enabled by default
  -- languages = {}, -- override or add new parser sources
})


vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})
vim.pack.add({"https://github.com/mason-org/mason.nvim"})

