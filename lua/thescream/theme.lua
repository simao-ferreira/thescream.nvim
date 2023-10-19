local c = require('thescream.palette')

local M = {}

M.set_highlights = function()
    local highlights = {
        Normal = { fg = c.fg, bg = c.nvim_bg },
        SignColumn = { bg = c.nvim_bg },
        MsgArea = { fg = c.fg, bg = c.nvim_bg },
        ModeMsg = { fg = c.fg, bg = c.bg },
        MsgSeparator = { fg = c.fg, bg = c.nvim_bg },
        SpellBad = { underline = true, italic = true, },
        SpellCap = { fg = c.color03, underline = true, },
        SpellLocal = { fg = c.color02, underline = true, },
        SpellRare = { fg = c.color05, underline = true, },
        NormalNC = { fg = c.fg, bg = c.nvim_bg },
        Pmenu = { fg = c.color00, bg = c.color07, sp = 'NONE', blend = 50, },
        PmenuSel = { bg = c.color04 },
        WildMenu = { fg = c.fg, bg = c.color04 },
        CursorLineNr = { fg = c.color00, bold = true, },
        Comment = { fg = c.color08, italic = true, },
        Folded = { fg = c.color00, bg = c.color00 },
        FoldColumn = { fg = c.color00, bg = c.color00 },
        LineNr = { fg = c.color08, },
        Whitespace = { fg = c.nvim_bg, },
        VertSplit = { fg = c.color08, bg = c.nvim_bg },
        CursorLine = { bg = c.bg },
        CursorColumn = { bg = c.bg },
        ColorColumn = { bg = c.bg },
        NormalFloat = { bg = c.nvim_bg },
        FloatBorder = { bg = c.color00 },
        FloatTitle = { bg = c.color00 },
        Visual = { bg = c.color04 },
        VisualNOS = { bg = c.color00 },
        WarningMsg = { fg = c.color01, bg = c.nvim_bg },
        DiffAdd = { fg = c.color00, bg = c.add },
        DiffChange = { fg = c.color00, bg = c.change, underline = true, },
        DiffDelete = { fg = c.color00, bg = c.delete },
        QuickFixLine = { bg = c.color04 },
        PmenuSbar = { bg = c.color00 },
        PmenuThumb = { bg = c.color08 },
        MatchWord = { underline = true, },
        MatchParen = { fg = c.color04, bg = c.nvim_bg, underline = true, },
        MatchWordCur = { underline = true, },
        MatchParenCur = { underline = true, },
        Cursor = { fg = c.color00, bg = c.color08 },
        lCursor = { fg = c.color00, bg = c.color08 },
        CursorIM = { fg = c.color00, bg = c.color08 },
        TermCursor = { fg = c.color00, bg = c.color08 },
        TermCursorNC = { fg = c.color00, bg = c.color08 },
        Conceal = { fg = c.color00, },
        Directory = { fg = c.color04, },
        SpecialKey = { fg = c.color04, bold = true, },
        Title = { fg = c.color04, bold = true, },
        ErrorMsg = { fg = c.color01, bg = c.nvim_bg, bold = true, },
        Search = { fg = c.color00, bg = c.color04 },
        IncSearch = { fg = c.color09, bg = c.color00 },
        Substitute = { fg = c.color00, bg = c.color09 },
        MoreMsg = { fg = c.color09, },
        Question = { fg = c.color09, },
        EndOfBuffer = { fg = c.nvim_bg, },
        NonText = { fg = c.nvim_bg, },
        Variable = { fg = c.color12, },
        String = { fg = c.color09, },
        Character = { fg = c.color09, },
        Constant = { fg = c.color12, },
        Number = { fg = c.color10, },
        Boolean = { fg = c.color04, },
        Float = { fg = c.color10, },
        Identifier = { fg = c.color12, },
        Function = { fg = c.color03, },
        Operator = { fg = c.fg, },
        Type = { fg = c.color12, },
        StorageClass = { fg = c.color04, },
        Structure = { fg = c.color04, },
        Typedef = { fg = c.color04, },
        Keyword = { fg = c.color04, },
        Statement = { fg = c.color05, },
        Conditional = { fg = c.color04, },
        Repeat = { fg = c.color05, },
        Label = { fg = c.color05, },
        Exception = { fg = c.color05, },
        Include = { fg = c.color05, },
        PreProc = { fg = c.color05, },
        Define = { fg = c.color05, },
        Macro = { fg = c.color05, },
        PreCondit = { fg = c.color05, },
        Special = { fg = c.color09, },
        SpecialChar = { fg = c.fg, },
        Tag = { fg = c.color04, },
        Debug = { fg = c.color01, },
        Delimiter = { fg = c.color08, },
        SpecialComment = { fg = c.color08, },
        Underlined = { underline = true, },
        Bold = { bold = true, },
        Italic = { italic = true, },
        Ignore = { fg = c.color12, bg = c.nvim_bg, bold = true, },
        Todo = { fg = c.color13, bg = c.nvim_bg, bold = true, },
        Error = { fg = c.color01, bg = c.nvim_bg, bold = true, },
        TabLine = { fg = c.color00, bg = c.color07 },
        TabLineSel = { fg = c.fg, bg = c.color07 },
        TabLineFill = { fg = c.color07, bg = c.color07 },

        -- Treesitter
        TSComment = { link = 'Comment' },
        TSAnnotation = { fg = c.color04, },
        TSAttribute = { fg = c.color12, },
        TSConstructor = { fg = c.color12, },
        TSType = { fg = c.color12, },
        TSTypeBuiltin = { fg = c.color09, },
        TSConditional = { fg = c.color03, },
        TSException = { fg = c.color05, },
        TSInclude = { fg = c.color05, },
        TSKeywordReturn = { fg = c.color05, },
        TSKeyword = { fg = c.color05, },
        TSKeywordFunction = { fg = c.color05, },
        TSLabel = { fg = c.color12, },
        TSNamespace = { fg = c.color12, },
        TSRepeat = { fg = c.color03, },
        TSConstant = { fg = c.color09, },
        TSConstBuiltin = { fg = c.color09, },
        TSFloat = { fg = c.color09, },
        TSNumber = { fg = c.color09, },
        TSBoolean = { fg = c.color09, },
        TSCharacter = { fg = c.color02, },
        TSError = { fg = c.color01, },
        TSFunction = { fg = c.color04, },
        TSFuncBuiltin = { fg = c.color04, },
        TSMethod = { fg = c.color04, },
        TSConstMacro = { fg = c.color09, },
        TSFuncMacro = { fg = c.color04, },
        TSVariable = { fg = c.color12, },
        TSVariableBuiltin = { fg = c.color01, },
        TSProperty = { fg = c.color01, },
        TSField = { fg = c.fg, },
        TSParameter = { fg = c.color01, },
        TSParameterReference = { fg = c.color01, },
        TSSymbol = { fg = c.color12, },
        TSText = { fg = c.color08, },
        TSOperator = { fg = c.color08, },
        TSPunctDelimiter = { fg = c.color08, },
        TSTagDelimiter = { fg = c.color08, },
        TSTagAttribute = { fg = c.color09, },
        TSPunctBracket = { fg = c.color08, },
        TSPunctSpecial = { fg = c.color05, },
        TSString = { fg = c.color02, },
        TSStringRegex = { fg = c.color02, },
        TSStringEscape = { fg = c.color02, },
        TSTag = { fg = c.color04, },
        TSEmphasis = { italic = true, },
        TSUnderline = { underline = true, },
        TSTitle = { fg = c.fg, },
        TSLiteral = { fg = c.color09, },
        TSURI = { fg = c.color09, underline = true, },
        TSKeywordOperator = { fg = c.color05, },
        TSStructure = { fg = c.color12, },
        TSStrong = { fg = c.color04, bold = true, },
        TSQueryLinterError = { fg = c.color09, },
        TreesitterContext = { bg = c.bg },

        -- markdown
        markdownBlockquote = { fg = c.color02, },
        markdownCode = { fg = c.color09, },
        markdownCodeBlock = { fg = c.color09, },
        markdownCodeDelimiter = { fg = c.color09, },
        markdownH1 = { fg = c.color04, },
        markdownH2 = { fg = c.color04, },
        markdownH3 = { fg = c.color04, },
        markdownH4 = { fg = c.color04, },
        markdownH5 = { fg = c.color04, },
        markdownH6 = { fg = c.color04, },
        markdownHeadingDelimiter = { fg = c.color04, },
        markdownHeadingRule = { fg = c.fg, bold = true, },
        markdownId = { fg = c.color05, },
        markdownIdDeclaration = { fg = c.color04, },
        markdownIdDelimiter = { fg = c.color00, },
        markdownLinkDelimiter = { fg = c.color00, },
        markdownBold = { fg = c.color04, bold = true, },
        markdownItalic = { italic = true, },
        markdownBoldItalic = { fg = c.color03, bold = true, italic = true, },
        markdownListMarker = { fg = c.color04, },
        markdownOrderedListMarker = { fg = c.color04, },
        markdownRule = { fg = c.color00, },
        markdownUrl = { fg = c.color12, underline = true, },
        markdownLinkText = { fg = c.color04, },
        markdownFootnote = { fg = c.color09, },
        markdownFootnoteDefinition = { fg = c.color09, },
        markdownEscape = { fg = c.color03, },

        -- Whichkey
        WhichKey = { fg = c.color09, },
        WhichKeySeparator = { fg = c.color02, },
        WhichKeyGroup = { fg = c.color04, },
        WhichKeyDesc = { fg = c.color12, },
        WhichKeyFloat = { bg = c.bg },

        -- Git
        SignAdd = { fg = c.add, },
        SignChange = { fg = c.change, },
        SignDelete = { fg = c.delete, },
        GitSignsAdd = { fg = c.add, },
        GitSignsChange = { fg = c.change, },
        GitSignsDelete = { fg = c.delete, },

        -- LSP
        LspDiagnosticsDefaultError = { fg = c.color01, },
        LspDiagnosticsDefaultWarning = { fg = c.color09, },
        LspDiagnosticsDefaultInformation = { fg = c.color03, },
        LspDiagnosticsDefaultInfo = { fg = c.color03, },
        LspDiagnosticsDefaultHint = { fg = c.color04, },
        LspDiagnosticsVirtualTextError = { fg = c.color01, },
        LspDiagnosticsVirtualTextWarning = { fg = c.color09, },
        LspDiagnosticsVirtualTextInformation = { fg = c.color03, },
        LspDiagnosticsVirtualTextInfo = { fg = c.color03, },
        LspDiagnosticsVirtualTextHint = { fg = c.color04, },
        LspDiagnosticsFloatingError = { fg = c.color01, },
        LspDiagnosticsFloatingWarning = { fg = c.color09, },
        LspDiagnosticsFloatingInformation = { fg = c.color03, },
        LspDiagnosticsFloatingInfo = { fg = c.color03, },
        LspDiagnosticsFloatingHint = { fg = c.color04, },
        DiagnosticSignError = { fg = c.color01, },
        DiagnosticSignWarning = { fg = c.color09, },
        DiagnosticSignInformation = { fg = c.color03, },
        DiagnosticSignInfo = { fg = c.color03, },
        DiagnosticSignHint = { fg = c.color04, },
        LspDiagnosticsSignError = { fg = c.color01, },
        LspDiagnosticsSignWarning = { fg = c.color09, },
        LspDiagnosticsSignInformation = { fg = c.color03, },
        LspDiagnosticsSignInfo = { fg = c.color03, },
        LspDiagnosticsSignHint = { fg = c.color04, },
        LspDiagnosticsError = { fg = c.color01, },
        LspDiagnosticsWarning = { fg = c.color09, },
        LspDiagnosticsInformation = { fg = c.color03, },
        LspDiagnosticsInfo = { fg = c.color03, },
        LspDiagnosticsHint = { fg = c.color04, },
        LspDiagnosticsUnderlineError = { underline = true, },
        LspDiagnosticsUnderlineWarning = { underline = true, },
        LspDiagnosticsUnderlineInformation = { underline = true, },
        LspDiagnosticsUnderlineInfo = { underline = true, },
        LspDiagnosticsUnderlineHint = { underline = true, },
        LspReferenceRead = {  },
        LspReferenceText = {  },
        LspReferenceWrite = {  },
        LspCodeLens = { fg = c.color08, italic = true, },
        LspCodeLensSeparator = { fg = c.color08, italic = true, },

        -- Telescope
        TelescopeSelection = { fg = c.color04, },
        TelescopeMatching = { fg = c.color03, bold = true, },
        TelescopeBorder = { fg = c.color04, bg = c.nvim_bg },

        -- NvimTree
        NvimTreeFolderIcon = { fg = c.color04, },
        NvimTreeIndentMarker = { fg = c.color07, },
        NvimTreeNormal = { fg = c.color00, bg = c.color07 },
        NvimTreeVertSplit = { fg = c.color00, bg = c.color00 },
        NvimTreeFolderName = { fg = c.color04, },
        NvimTreeOpenedFolderName = { fg = c.color04, bold = true, italic = true, },
        NvimTreeEmptyFolderName = { fg = c.color08, italic = true, },
        NvimTreeGitIgnored = { fg = c.color08, italic = true, },
        NvimTreeImageFile = { fg = c.color00, },
        NvimTreeSpecialFile = { fg = c.color09, },
        NvimTreeEndOfBuffer = { fg = c.color07, },
        NvimTreeCursorLine = { bg = c.color00 },
        NvimTreeGitignoreIcon = { fg = c.color09, },
        NvimTreeGitStaged = { fg = c.add, },
        NvimTreeGitNew = { fg = c.add, },
        NvimTreeGitRenamed = { fg = c.add, },
        NvimTreeGitDeleted = { fg = c.delete, },
        NvimTreeGitMerge = { fg = c.change, },
        NvimTreeGitDirty = { fg = c.change, },
        NvimTreeSymlink = { fg = c.color12, },
        NvimTreeRootFolder = { fg = c.fg, bold = true, },
        NvimTreeExecFile = { fg = c.color10, },

        -- Buffer
        BufferCurrent = { fg = c.fg, bg = c.nvim_bg },
        BufferCurrentIndex = { fg = c.fg, bg = c.nvim_bg },
        BufferCurrentMod = { fg = c.color03, bg = c.nvim_bg },
        BufferCurrentSign = { fg = c.color04, bg = c.nvim_bg },
        BufferCurrentTarget = { fg = c.color01, bg = c.nvim_bg, bold = true, },
        BufferVisible = { fg = c.fg, bg = c.nvim_bg },
        BufferVisibleIndex = { fg = c.fg, bg = c.nvim_bg },
        BufferVisibleMod = { fg = c.color03, bg = c.nvim_bg },
        BufferVisibleSign = { fg = c.color08, bg = c.nvim_bg },
        BufferVisibleTarget = { fg = c.color01, bg = c.nvim_bg, bold = true, },
        BufferInactive = { fg = c.color08, bg = c.color00 },
        BufferInactiveIndex = { fg = c.color08, bg = c.color00 },
        BufferInactiveMod = { fg = c.color03, bg = c.color00 },
        BufferInactiveSign = { fg = c.color08, bg = c.color00 },
        BufferInactiveTarget = { fg = c.color01, bg = c.color00, bold = true, },

        -- StatusLine
        StatusLine = { fg = c.color08, bg = c.color00 },
        StatusLineNC = { fg = c.color08, bg = c.color00 },
        StatusLineSeparator = { fg = c.color08, },
        StatusLineTerm = { fg = c.color08, },
        StatusLineTermNC = { fg = c.color08, },

        -- IndentBlankline
        IndentBlanklineContextChar = { fg = c.color08, },
        IndentBlanklineContextStart = { underline = true, },
        IndentBlanklineChar = { fg = c.color00, },
        IndentBlanklineSpaceChar = { fg = c.color12, },
        IndentBlanklineSpaceCharBlankline = { fg = c.color03, },

        -- Dashboard
        DashboardCenter = { fg = c.color05, },
        DashboardDesc = { fg = c.color08 },
        DashboardFooter = { fg = c.color12, },
        DashboardHeader = { fg = c.color04, },
        DashboardIcon = { fg = c.color08, bold = true },
        DashboardKey = { fg = c.color09 },
        DashboardShortCut = { fg = c.color09, },

        -- Cmp
        CmpItemAbbrDeprecated = { fg = c.color08, strikethrough = true, },
        CmpItemAbbrMatch = { fg = c.color04, },
        CmpItemAbbrMatchFuzzy = { fg = c.color04, },
        CmpItemKindFunction = { fg = c.color04, },
        CmpItemKindMethod = { fg = c.color04, },
        CmpItemKindConstructor = { fg = c.color12, },
        CmpItemKindClass = { fg = c.color12, },
        CmpItemKindEnum = { fg = c.color12, },
        CmpItemKindEvent = { fg = c.color03, },
        CmpItemKindInterface = { fg = c.color12, },
        CmpItemKindStruct = { fg = c.color12, },
        CmpItemKindVariable = { fg = c.color01, },
        CmpItemKindField = { fg = c.color01, },
        CmpItemKindProperty = { fg = c.color01, },
        CmpItemKindEnumMember = { fg = c.color09, },
        CmpItemKindConstant = { fg = c.color09, },
        CmpItemKindKeyword = { fg = c.color05, },
        CmpItemKindModule = { fg = c.color12, },
        CmpItemKindValue = { fg = c.fg, },
        CmpItemKindUnit = { fg = c.fg, },
        CmpItemKindText = { fg = c.fg, },
        CmpItemKindSnippet = { fg = c.color03, },
        CmpItemKindFile = { fg = c.fg, },
        CmpItemKindFolder = { fg = c.fg, },
        CmpItemKindColor = { fg = c.fg, },
        CmpItemKindReference = { fg = c.fg, },
        CmpItemKindOperator = { fg = c.fg, },
        CmpItemKindTypeParameter = { fg = c.color01, }
    }

    for highlight, parameters in pairs(highlights) do
        vim.api.nvim_set_hl(0, highlight, parameters)
    end
end


M.set_terminal_highlights = function()
    local function set_terminal_colors()
        vim.g.terminal_color_0 = colors.dark_grey
        vim.g.terminal_color_1 = colors.red
        vim.g.terminal_color_2 = colors.green
        vim.g.terminal_color_3 = colors.yellow
        vim.g.terminal_color_4 = colors.blue
        vim.g.terminal_color_5 = colors.purple
        vim.g.terminal_color_6 = colors.white
        vim.g.terminal_color_7 = colors.light_grey
        vim.g.terminal_color_8 = colors.grey
        vim.g.terminal_color_9 = colors.orange
        vim.g.terminal_color_10 = colors.light_green
        vim.g.terminal_color_11 = colors.dark_yellow
        vim.g.terminal_color_12 = colors.light_blue
        vim.g.terminal_color_13 = colors.light_purple
        vim.g.terminal_color_14 = colors.color14
        vim.g.terminal_color_15 = colors.color15
        vim.g.terminal_color_background = colors.bg
        vim.g.terminal_color_foreground = colors.fg
    end
end

return M
