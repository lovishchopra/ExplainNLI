(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun PlaysTogether (BoundSet BoundSet) Bool)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(declare-fun IsIn (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (PlaysTogether a b) (and (IsOn c a) (and (IsOn c b) (IsIn d c)))))))) (exists ((e BoundSet)) (exists ((a BoundSet)) (and (IsOutside e) (IsOutside a)))))))
(check-sat)
(get-model)