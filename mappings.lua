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

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader><leader>"] = { "<cmd>Telescope buffers<cr>", desc = "Buffer list" },
    ["<leader><TAB>"] = { "<cmd>b #<cr>", desc = "Edit alternate file" },

    -- The default binding hides hidden files, but I want to see them
    ["<leader>ff"] = { function() require("telescope.builtin").find_files { hidden = true } end, desc = "Find files" },

    -- Resume last Telescope session
    ["<leader>f<space>"] = {
      function() require("telescope.builtin").resume() end,
      desc = "Resume last Telescope search",
    },
  },
  v = {
    [";"] = { ":", desc = "Command mode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
