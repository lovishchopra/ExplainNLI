(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun CauseCancer (BoundSet) Bool)
(declare-fun On (BoundSet BoundSet) Bool)
(declare-fun VotesFor (BoundSet) Bool)
(declare-fun TearsDown (BoundSet BoundSet) Bool)
(declare-fun ReplacesWith (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (CauseCancer a)) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (CauseCancer g) (On h i)))))) (exists ((e BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (VotesFor c) (and (TearsDown c a) (and (ReplacesWith a d) (On d e)))))))))))
(check-sat)
(get-model)