(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun IsStoppedFromKicking (BoundSet) Bool)
(declare-fun IsHim (BoundSet) Bool)
(declare-fun IsBlockedDuringSparringMatch (BoundSet) Bool)
(declare-fun IsKicked (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsYoung a) (and (IsStoppedFromKicking b) (IsHim c)))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsStoppedFromKicking f) (IsBlockedDuringSparringMatch g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsBlockedDuringSparringMatch h) (IsStoppedFromKicking i)))) (forall ((k BoundSet)) (forall ((j BoundSet)) (=> (IsHim j) (IsYoung k))))))) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsYoung a) (and (IsBlockedDuringSparringMatch d) (IsKicked e)))))))))
(check-sat)
(get-model)