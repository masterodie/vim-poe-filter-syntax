" Vim Syntax File
" Language: Path of Exile Loot filter
" Maintainer: Patrick Neff
" Latest Revision: 26 April 2016

if exists('b:current_syntax')
    finish
endif

syn keyword filterCondition ItemLevel DropLevel Quality Rarity Class BaseType
syn keyword filterCondition Sockets LinkedSockets SocketGroup Height Width

syn keyword filterAction SetBorderColor SetTextColor SetBackgroundColor
syn keyword filterAction PlayAlertSound SetFontSize

syn keyword filterBlock Show Hide

syn keyword filterRarity Normal Rare Magic Unique

syn match filterComment "\v#.*$"

syn match filterOperator "\v\<"
syn match filterOperator "\v\<\="
syn match filterOperator "\v\>"
syn match filterOperator "\v\>\="
syn match filterOperator "\v\="

syn region filterString start=/\v"/ skip=/\v\\./ end=/\v"/

syn match filterNumber '\d\+'


hi def link filterCondition Structure
hi def link filterAction Function
hi def link filterOperator Conditional
hi def link filterBlock Conditional
hi def link filterComment Comment
hi def link filterString String
hi def link filterNumber Number
hi def link filterRarity Constant

let b:current_syntax = 'poe'
