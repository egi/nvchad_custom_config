
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd> set wrap! <CR>",  "toggle wrap" },
    ["<leader>W"] = { "<cmd> set nowrap <CR>", "nowrap" },

    ["gW"] = { "<cmd> :only<cr>", "close all other windows (in the current tab)" },

    ["<leader>d"] = { "<cmd> :bufdo bd<cr>", "delete all buffers" },

    ["go"] = { "<cmd> o<esc>", "insert blank line below" },
    ["gO"] = { "<cmd> O<esc>", "insert blank line up" },

    -- mapping the jumping between splits. Hold control while using vim nav.
    ["<C-J>"] = { "<cmd> <C-W>j", "jump between split to down" },
    ["<C-K>"] = { "<cmd> <C-W>k", "jump between split to up" },
    ["<C-H>"] = { "<cmd> <C-W>h", "jump between split to left" },
    ["<C-L>"] = { "<cmd> <C-W>l", "jump between split to right" },

    -- Yank from the cursor to the end of the line, to be consistent with C and D.
    ["Y"] = { "<cmd> y$", "Yank from the cursor to the end of the line" },

    -- select the lines which were just pasted
    ["vv"] = { "<cmd> `[V`]", "select the lines which were just pasted" },

    -- clean up trailing whitespace
    ["<leader>c"] = { "<cmd> :lua require('trim.trimmer').trim()<cr>", "clean up trailing whitespace" },

    -- compress excess whitespace on current line
    -- FIXME: conflicting with nvimtree.focus
    -- ["<leader>e"] = { "<cmd> :s/\\v(\\S+)\\s+/\\1 /<cr>:nohl<cr>", "compress excess whitespace on current line" },

    -- buffer resizing mappings (shift + arrow key)
    ["<S-Up>"] = { "<cmd> <c-w>+", "buffer resize up" },
    ["<S-Down>"] = { "<cmd> <c-w>-", "buffer resize down" },
    ["<S-Left>"] = { "<cmd> <c-w><<c-w><<c-w><", "buffer resize to the left" },
    ["<S-Right>"] = { "<cmd> <c-w>><c-w>><c-w>>", "buffer erize to the right" },

    -- reindent the entire file
    ["<leader>I"] = { "<cmd> gg=G``<cr>", "reindent the entire file" },

    -- Tricks
    --["n"] = { "<cmd> nzz" },
    --["N"] = { "<cmd> Nzz" },
    --["<C-o>"] = { "<cmd> <C-o>zz" },
    --["<C-i>"] = { "<cmd> <C-i>zz" },
    --["<space>"] = { "<cmd> :syn sync fromstart<cr>" },

    -- CTRL-V and SHIFT-Insert are Paste
    ["<S-Insert>"] = { '"<cmd> +gP', "paste" },

    -- Navigation for tab
    --["<leader>1"] = { "<cmd> 1gt" },
    --["<leader>2"] = { "<cmd> 2gt" },
    --["<leader>3"] = { "<cmd> 3gt" },
    --["<leader>4"] = { "<cmd> 4gt" },
    --["<leader>5"] = { "<cmd> 5gt" },
    --["<leader>6"] = { "<cmd> 6gt" },
    --["<leader>7"] = { "<cmd> 7gt" },
    --["<leader>8"] = { "<cmd> 8gt" },
    --["<leader>9"] = { "<cmd> 9gt" },
    --["<leader>0"] = { "<cmd> :tablast<cr>" },

    -- fugitive
    ["<leader>gs"] = { "<cmd> tab Git <CR>",     "git status" },
    ["<leader>gb"] = { "<cmd> Git blame <CR>",   "git blame" },
    ["<leader>gh"] = { "<cmd> diffget //2 <CR>", "resolve using //2" },
    ["<leader>gl"] = { "<cmd> diffget //3 <CR>", "resolve using //3" },
  },

  v = {
    -- CTRL-X and SHIFT-Del are Cut
    ["<C-X>"] = { '"+x', "cut" },
    ["<S-Del>"] = { '"+x', "cut" },

    -- CTRL-C and CTRL-Insert are Copy
    ["<C-C>"] = { '"+y', "copy" },
    ["<C-Insert>"] = { '"+y', "copy" },
  },

  i = {
    -- CTRL-V and SHIFT-Insert are Paste
    ["<S-Insert>"] = { '"+gP', "paste" },

  },

  c = {
    -- insert the path of currently edited file into a command
    -- Command mode: Ctrl-P
    ["<C-S-P>"] = { '<C-R>=expand("<cmd> %:p:h") . "/" <cr>', "insert the path of currently edited file into a command" },

    -- CTRL-V and SHIFT-Insert are Paste
    ["<S-Insert>"] = { "<cmd> <C-R>+", "paste" },

  },
}

--M.fugitive = {
--  n = {
--    ["<leader>gs"] = { "<cmd> tab Git <CR>",     "git status" },
--    ["<leader>gb"] = { "<cmd> Git blame <CR>",   "git blame" },
--    ["<leader>gh"] = { "<cmd> diffget //2 <CR>", "resolve using //2" },
--    ["<leader>gl"] = { "<cmd> diffget //3 <CR>", "resolve using //3" },
--  }
--}

M.comment = {
   n = {
      ["<C-_>"] = {
         function()
            require("Comment.api").toggle.linewise.current()
         end,

         "蘒  toggle comment",
      },
   },

   v = {
      ["<C-_>"] = {
         "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
         "蘒  toggle comment",
      },
   },
}

M.nvimtree = {
   n = {
      ["<leader>gg"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
   },
}

M.telescope = {
   n = {
      ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
      ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
      ["<leader>ft"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
   },
}

return M
