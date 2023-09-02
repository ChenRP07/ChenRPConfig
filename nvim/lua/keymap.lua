-- keymap

local map = vim.api.nvim_set_keymap
local opts = {
    noremap = true,
    silent = true
}

map("n", "<leader>nh", "<Cmd>noh<CR>", opts)
-- source init.lua
map("n", "<leader>rs", "<Cmd>source C:/Users/10462/AppData/Local/nvim/init.lua<CR>", opts)

-- open or close nvim-tree
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", opts)

-- 左右tab切换
map("n", "<C-h>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<C-l>", "<Cmd>BufferLineCycleNext<CR>", opts)

-- telescope
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<Cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>", opts)

-- floaterm
map("n", "<leader>ftt", "<Cmd>FloatermToggle<CR>", opts)
map("t", "<leader>ftk", "<C-\\><C-n>:FloatermKill<CR>", opts)
map("n", "<leader>ftn", "<Cmd>FloatermNext<CR>", opts)
map("n", "<leader>ftp", "<Cmd>FloatermPrev<CR>", opts)
map("t", "<leader>ftq", "<C-\\><C-n>:FloatermToggle<CR>", opts)
