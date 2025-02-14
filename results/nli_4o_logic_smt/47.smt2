(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSlightlyObese (BoundSet) Bool)
(declare-fun IsNormalIn (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((x BoundSet)) (and (IsSlightlyObese x) (IsNormalIn a x)))) (exists ((a BoundSet)) (exists ((x BoundSet)) (and (IsSlightlyObese x) (IsNormalIn a x)))))))
(check-sat)
(get-model)