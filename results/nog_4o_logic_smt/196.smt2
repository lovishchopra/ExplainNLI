(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun something () BoundSet)
(declare-fun IsInBeigeBlazer (BoundSet) Bool)
(declare-fun Discusses (BoundSet BoundSet) Bool)
(declare-fun Drops (BoundSet BoundSet) Bool)
(declare-fun ReachesFor (BoundSet BoundSet) Bool)
(declare-fun IsTalking (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInBeigeBlazer b) (and (Discusses b c) (and (Drops a something) (ReachesFor a something))))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (IsTalking d) (ReachesFor a a)))))))
(check-sat)
(get-model)