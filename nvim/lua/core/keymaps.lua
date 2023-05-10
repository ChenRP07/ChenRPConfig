vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>,', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
keymap.set('n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
keymap.set('n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
keymap.set('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader><S-f>', ':ClangFormat<CR>:w<CR>')
keymap.set('n', '<leader>df', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>')

keymap.set('n', '<leader>tn', ':FloatermNew<CR>')
keymap.set('n', '<leader>tt', ':FloatermToggle<CR>')
keymap.set('n', '<leader>tk', ':FloatermKill<CR>')
keymap.set('n', '<leader>th', ':FloatermHide<CR>')
keymap.set('n', '<leader>tP', ':FloatermPrev<CR>')
keymap.set('n', '<leader>tN', ':FloatermNext<CR>')
keymap.set('n', '<leader>ts', ':FloatermShow<CR>')
keymap.set('n', '<leader>tF', ':FloatermFirst<CR>')
keymap.set('n', '<leader>tL', ':FloatermLast<CR>')
keymap.set('t', '<esc>', '<C-\\><C-n>')

vim.keymap.set("n", "<leader>t]", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "<leader>t[", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

function FileHeader()
    header = vim.call('getline', '1')
    timestring = vim.call('strftime', "%Y/%m/%d %H:%M")
    if( string.match(header, "/* Copyright Notice.") ) 
    then
      vim.call('setline', '11', " * Last Modified : " .. timestring)
    else
      vim.call('append', '0', "/* Copyright Notice.")
      vim.call('append', '1', " * ")
      vim.call('append', '2', " * Please read the LICENSE file in the project root directory for details")
      vim.call('append', '3', " * of the open source licenses referenced by this source code.")
      vim.call('append', '4', " * ")
      vim.call('append', '5', " * Copyright: @ChenRP07. All Right Reserved.")
      vim.call('append', '6', " * ")
      vim.call('append', '7', " * Author        : ChenRP07")
      vim.call('append', '8', " * Description   : ")
      vim.call('append', '9', " * Create Time   : " .. timestring)
      vim.call('append', '10' , " * Last Modified : " .. timestring)
      vim.call('append', '11', " * ")
      vim.call('append', '12', " */")
    end
end

keymap.set('n', '<leader><F6>', '<cmd>lua FileHeader()<CR>:w<CR>')

keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<CR>')
keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<CR>')
keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<CR>')
keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<CR>')
keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<CR>')
keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<CR>')
keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<CR>')
keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<CR>')
keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<CR>')
keymap.set('n', '<leader>0', '<cmd>BufferLineGoToBuffer -1<CR>')

keymap.set('n', '<leader>qq', '<cmd>Bdelete<CR>')
