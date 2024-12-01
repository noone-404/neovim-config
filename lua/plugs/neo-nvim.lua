require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    },
    window = {
        position = "right",
        width = 30,
        mapping_options = {
            noremap = true,
            nowait = true,
        },
    },
})

