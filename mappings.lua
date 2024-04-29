---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    -- move between tabs/buffers
    ["<C-f>"] = { "<cmd>tabnext<cr>", desc = "Move buffer tab right" },
    ["<C-s>"] = { "<cmd>tabprev<cr>", desc = "Move buffer tab left" },
    ["]b"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["[b"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>C"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },

    -- nvim-tree / neotree
    -- ["<leader>n"] = { "<cmd>NvimTreeToggle<cr>", desc = "Toggle Explorer" },
    ["<leader>n"] = { "<cmd>Neotree source=filesystem reveal=true toggle<cr>", desc = "Toggle Explorer" },

    -- telescope
    ["<C-p>"] = { function() require("telescope.builtin").find_files() end, desc = "Search files" },
    [";"] = { function() require("telescope.builtin").buffers() end, desc = "Search buffers" },
    ["<leader>gb"] = { function() require("telescope.builtin").git_branches() end, desc = "Search branches" },
    ["<leader>gc"] = { function() require("telescope.builtin").git_commits() end, desc = "Search commits" },
    ["<leader>gcb"] = { function() require("telescope.builtin").git_bcommits() end, desc = "Search bcommits" },
    ["<A-h>"] = { "<C-W>h", desc = "Move to left pane" },
    ["<A-l>"] = { "<C-W>l", desc = "Move to right pane" },
    ["<A-k>"] = { "<C-W>k", desc = "Move to up pane" },
    ["<A-j>"] = { "<C-W>j", desc = "Move to down pane" },

    -- nerdcommenter

    -- gitsigns
    ["]c"] = { function() require("gitsigns").next_hunk() end, desc = "Next git hunk" },
    ["[c"] = { function() require("gitsigns").prev_hunk() end, desc = "Previous git hunk" },
    ["<leader>gp"] = { function() require("gitsigns").preview_hunk() end, desc = "Preview git hunk" },
    ["<leader>gh"] = { function() require("gitsigns").reset_hunk() end, desc = "Reset git hunk" },

    -- fugitive
    ["<leader>gs"] = { ":Git<cr>", desc = "Toggle git status" },
    ["<leader>gr"] = { ":Git fetchrebase<cr>", desc = "Git fetch & rebase interactive" },
    ["<leader>gfp"] = { ":Git push origin HEAD -f<cr>", desc = "Git force push" },
    ["<leader>gu"] = { ":Git update<cr>", desc = "Git update" },
    ["<leader>gd"] = { ":Gdiff<cr>", desc = "Git diff" },

    -- gv
    ["<leader>gl"] = { ":GV<CR>", desc = "Git log" },
    ["<leader>gla"] = { ":GV --branches --remotes --tags<CR>", desc = "Git log all branches" },
    ["<leader>glc"] = { ":GV --branches --remotes --tags --simplify-by-decoration<CR>", desc = "Git log all branches simplified" },

    -- chatgpt
    ["<leader>chn"] = { ":GpChatNew split<cr>", desc = "Open new gpt chat" },
    ["<leader>chr"] = { ":GpChatRespond<cr>", desc = "Gp chat respond" },
    ["<leader>chw"] = { ":GpRewrite<cr>", desc = "Gp rewrite" },
    ["<leader>cha"] = { ":GpAppend<cr>", desc = "Gp append" },
    ["<leader>chp"] = { ":GpPrepend<cr>", desc = "Gp prepend" },

    -- octo
    ["<leader>op"] = { ":Octo pr list<cr>", desc = "Open octo PR list" },
    ["<leader>ors"] = { ":Octo review start<cr>", desc = "Start octo review" },
    ["<leader>orr"] = { ":Octo review resume<cr>", desc = "Resume octo review" },
    ["<leader>orc"] = { ":Octo review commit<cr>", desc = "Open octo review commit list" },
    ["<leader>orq"] = { ":Octo review close<cr>", desc = "Close/quit octo review" },
    ["<leader>os"] = { ":Octo review submit<cr>", desc = "Submit octo review" },
    ["<leader>opm"] = { ":Octo pr merge commit delete<cr>", desc = "Merge octo pr" },
    ["<leader>opc"] = { ":Octo pr checkout<cr>", desc = "Checkout octo pr" },

    -- quickfix window
    ["<leader>q"] = { "<Plug>window:quickfix:toggle", desc = "Toggle quickfix window" },
    ["<leader>qn"] = { ":cn<CR>", desc = "Next quickfix item" },
    ["<leader>qp"] = { ":cp<CR>", desc = "Previous quickfix item" },

    -- hop (easymotion)
    ["<leader>/"] = { ":HopPattern<cr>", desc = "Search with easymotion" },
    ["<leader>w"] = { ":HopWord<cr>", desc = "Go to word with easymotion" },

    -- vim move
    ["<C-k>"] = { ":MoveLine(-1)<CR>", desc = "Move line up" },
    ["<C-j>"] = { ":MoveLine(1)<CR>", desc = "Move line down" },

    -- Search
    ["<leader>sw"] = { ":CtrlSF <c-r>=expand('<cword>')<cr><cr><cr>", desc = "Search word under cursor" },
    ["\\"] = { function() require'telescope.builtin'.grep_string{ shorten_path = true, word_match = "-w", only_sort_text = true, search = '' } end, desc = "Search words" },

    -- symbols outline
    ["<leader>so"] = { ":SymbolsOutline<cr>", desc = "Toggle Symbols Outline" },
  },
  v = {
    [">"] = { ">gv", "indent"},

    -- vim move
    ["<C-k>"] = { ":MoveBlock(-1)<CR>", desc = "Move block up" },
    ["<C-j>"] = { ":MoveBlock(1)<CR>", desc = "Move block down" },

    -- chatgpt
    ["<leader>chn"] = { ":GpChatNew<cr>", desc = "Open new gpt chat" },
    ["<leader>chr"] = { ":GpChatRespond<cr>", desc = "Gp chat respond" },
    ["<leader>chw"] = { ":GpRewrite<cr>", desc = "Gp rewrite" },
    ["<leader>cha"] = { ":GpAppend<cr>", desc = "Gp append" },
    ["<leader>chp"] = { ":GpPrepend<cr>", desc = "Gp prepend" },
  },
}

-- more keybinds!

return M
