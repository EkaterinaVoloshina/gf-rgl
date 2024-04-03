concrete ExtendHrv of Extend = CatHrv ** 
  ExtendFunctor - [
    --- ReflPossPron
    CardCNCard
    ---- constant not found (yet)
    ,GenRP
    ,youPolFem_Pron
    ,UttVPShort
    ,UttAccIP
    ,UttDatIP
    ,SubjRelNP
    ,StrandRelSlash
    ,StrandQuestSlash
    ,SlashBareV2S
    ,PredIAdvVP
    ,PredAPVP
    ,ExistsNP
    ,ExistS
    ,ExistPluralCN
    ,ExistNPQS
    ,ExistMassCN
    ,ExistIPQS
    ,ExistCN
    ,EmptyRelSlash
    ,DetNPMasc
    ,DetNPFem
    ,ComplBareVS
    ,CompIQuant
    ,CompBareCN
    ,PiedPipingQuestSlash
    ,PiedPipingRelSlash
    ]
  with (Grammar = GrammarHrv)
    **
open
  ResHrv
in {

---lin ReflPossPron = justDemPronFormsAdjective reflPossessivePron ;

lin
  CardCNCard card cn = {
    s = \\g,c => card.s ! g ! c ++ numSizeForm cn.s card.size c ;
    size = NS_20_
    } ;

  GenRP num cn = {
    s = \\g, n, c => Grammar.IdRP.s ! g ! n ! Gen ++ num.s ! cn.g ! c ++ cn.s ! n ! c
    } ;

}
