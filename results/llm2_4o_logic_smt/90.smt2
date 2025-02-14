(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsPersonallyAttacked (BoundSet) Bool)
(declare-fun ShiftsAttentionAwayFrom (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsPersonallyAttacked a) (ShiftsAttentionAwayFrom b)))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsPersonallyAttacked a) (ShiftsAttentionAwayFrom b)))))))
(check-sat)
(get-model)