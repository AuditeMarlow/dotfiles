return {
    "tpope/vim-abolish",
    config = function()
        vim.cmd([[Abolish req{eu,ue}st{,ed,ing} req{ue}st{}]])
        vim.cmd([[Abolish re{sp,ps,s,p}on{d,se,sive} re{sp}on{}]])
        vim.cmd([[Abolish pay{emnt,emtn}{,s} pay{ment}{}]])
        vim.cmd([[Abolish {despa,sepe,prepe,decle}rat{e,es,ed,ing,ely,ion,ions,or} {despe,sepa,prepa,decla}rat{}]])
        vim.cmd([[Abolish {defe}n{itive,itely,tion,e} {defi}n{}]])
        vim.cmd([[Abolish req{i,u,iu}r{,e,ed,ement,ing} req{ui}r{}]])
        vim.cmd([[Abolish co{mp,pm}o{n,m}ent{,s} co{mp}o{n}ent{}]])
        vim.cmd([[Abolish d{i,e}vid{e,er,ed,ing} d{i}vid{}]])
        vim.cmd([[Abolish co{mp,pm,p,m}{an,na}{y,ies} co{mp}{an}{}]])
        vim.cmd([[Abolish pe{r,s,rs,sr}ist{a}n{t,tly,ce} pe{rs}ist{e}n{}]])
        vim.cmd([[Abolish re{sp,ps,p,s}on{se,es} re{sp}on{se}]])
        vim.cmd([[Abolish gro{up,pu}ed grouped]])
        vim.cmd([[Abolish r{ela,eal,ael,ale,lae,lea}t{ion,oin,ino,oni,nio,noi} relation]])
        vim.cmd([[Abolish d{ri,ir}ver{,s} d{ri}ver{}]])
        vim.cmd([[Abolish te{mp,pm}{la,al}te template]])
        vim.cmd([[Abolish p{la,al}tform platform]])
    end,
}
