local mark = require("harpoon.mark")
local term = require("harpoon.term")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function() 
    mark.add_file()
    ui.toggle_quick_menu()
    ui.toggle_quick_menu()
end)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_prev() end)
vim.keymap.set("n", "<C-l>", function() ui.nav_next() end)

require('harpoon').setup({
    tabline = true, 
})
vim.cmd([[
highlight! HarpoonInactive guibg=#181616 guifg=#63698c
highlight! HarpoonActive guibg=#3e3939 guifg=white
highlight! HarpoonNumberActive guibg=#3e3939 guifg=#7aa2f7
highlight! HarpoonNumberInactive guibg=#181616 guifg=#7aa2f7
highlight! TabLineFill guibg=NONE guifg=white
]])
