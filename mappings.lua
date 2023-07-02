-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    [";"] = { ":", desc = "Command mode" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader><leader>"] = { "<cmd>Telescope buffers<cr>", desc = "Buffer list" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader><BS>"] = { "<cmd>bdelete!<cr>", desc = "Close current buffer" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- Resume last Telescope session
    ["<leader>sr"] = {
      function() require("telescope.builtin").resume() end,
      desc = "Resume last Telescope search",
    },
    ["<TAB>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
    ["<S-TAB>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<leader>gx"] = { "<cmd>GitConflictListQf<CR>", desc = "Git conflicts" },
    ["<CR>"] = { "<cmd>NeoZoomToggle<CR>", desc = "Zoom in/out", nowait = true },
  },
  v = {
    [";"] = { ":", desc = "Command mode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
