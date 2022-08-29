local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Save buffer
map('', '<C-s>', '<CMD>:update<CR>')

-- Close window
map('n', '<A-q>', '<CMD>:close<CR>')

-- Switch tabs
map('n', '<C-left>', '<CMD>:tabprevious<CR>')
map('n', '<C-right>', '<CMD>:tabnext<CR>')

-- Switch buffers
map('n', '<A-,>', '<CMD>:bprevious<CR>')
map('n', '<A-.>', '<CMD>:bnext<CR>')

-- Increment/decrement with "-" and "+"
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- Do not yank with "x"
map('n', 'x', '"_x')

-- Delete a word backwards
map('n', 'dw', 'vb"_d')

-- Select all
map('n', '<C-a>', 'gg<S-v>G')

-- Ctrl-C Ctrl-V to copy / past
map('v', '<C-c>', '"+y')
map('n', '<C-S-v>', '"+p')
map('c', '<C-S-v>', '<C-r>+')
map('i', '<C-S-v>', '<C-r>+')

-- Quit all without saving
map('', '<C-A-q>', '<CMD>qall!<CR>')

-- New tab
map('n', '<A-t>', '<CMD>:tabedit<CR>')

-- Break current window to a new tab
map('n', '<A-b>', '<С-w>T')

-- Resizing panes
map('', '<A-Left>', ':vertical resize -4<CR>')
map('', '<A-Right>', ':vertical resize +4<CR>')
map('', '<A-Up>', ':resize +1<CR>')
map('', '<A-Down>', ':resize -1<CR>')

-- numToStr original bindings
-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')
map('n', '#', '#N')

-- Fix n and N. Keeping cursor in center
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Mimic shell movements
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

-- Close buffer / quit Neovim safely
map('n', '<C-Q>', '<CMD>q<CR>')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Move to the next/previous buffer
map('n', '<leader>[', '<CMD>bp<CR>')
map('n', '<leader>]', '<CMD>bn<CR>')

-- Move to last buffer
map('n', "''", '<CMD>b#<CR>')

-- Copying the vscode behaviour of making tab splits
map('n', '<C-\\>', '<CMD>vsplit<CR>')
map('n', '<A-\\>', '<CMD>split<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
map('x', 'A', ':<C-U>normal! ggVG<CR>')
