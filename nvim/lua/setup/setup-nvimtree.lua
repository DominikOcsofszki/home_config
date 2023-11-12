require("nvim-tree").setup({
      sync_root_with_cwd = true;

      view = {
        width = 32,
        relativenumber = true,
    },


      renderer = {
        highlight_opened_files = "icon",
        highlight_modified = "icon",
      },
})
