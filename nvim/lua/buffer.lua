require("bufferline").setup {}
local present, bufferline = pcall(require, "bufferline")
if not present then
  return
end
bufferline.setup {
  options = {
    offsets = {{filetype = "NvimTree", text = "", padding = 1}},
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    show_close_icon = true,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 25,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    separator_style = "thin",
    always_show_bufferline = true,
    diagnostics = false,
    custom_filter = function(buf_number)
      -- Func to filter out our managed/persistent split terms
      local present_type, type =
        pcall(
        function()
          return vim.api.nvim_buf_get_var(buf_number, "term_type")
        end
      )

      if present_type then
        if type == "vert" then
          return false
        elseif type == "hori" then
          return false
        else
          return true
        end
      else
        return true
      end
    end
  },
  highlights = {
    background = {
      guifg = "#FFFFFF",
      guibg = "#1E1E1E"
    },
    buffer_selected = {
      guifg = "#FFFFFF",
      guibg = "#1E1E1E",
      gui = "bold"
    },
    buffer_visible = {
      guifg = "#FFFFFF",
      guibg = "#303030"
    },
    close_button = {
      guifg = "#FFFFFF",
      guibg = "#1E1E1E"
    },
    close_button_visible = {
      guifg = "#FFFFFF",
      guibg = "#303030"
    },
    close_button_selected = {
      guifg = "#D16969",
      guibg = "#1E1E1E"
    },
    fill = {
      guifg = "#FFFFFF",
      guibg = "#303030"
    },
    indicator_selected = {
      guifg = "#1E1E1E",
      guibg = "#1E1E1E"
    },
    separator = {
      guifg = "#1E1E1E",
      guibg = "#1E1E1E"
    },
    separator_visible = {
      guifg = "#1E1E1E",
      guibg = "#1E1E1E"
    },
    separator_selected = {
      guifg = "#1E1E1E",
      guibg = "#1E1E1E"
    },
    tab = {
      guifg = "#FFFFFF",
      guibg = "#303030"
    },
    tab_selected = {
      guifg = "#1E1E1E",
      guibg = "#B5CEA8"
    },
    tab_close = {
      guifg = "#D16969",
      guibg = "#1E1E1E"
    },
    modified = {
      guifg = "#D16969",
      guibg = "#1E1E1E"
    },
    modified_visible = {
      guifg = "#D16969",
      guibg = "#1E1E1E"
    },
    modified_selected = {
      guifg = "#B5CEA8",
      guibg = "#1E1E1E"
    }
  }
}
