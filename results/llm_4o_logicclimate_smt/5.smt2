(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun LiveIn (BoundSet BoundSet) Bool)
(declare-fun Experiences (BoundSet BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (LiveIn b c) (not (LiveIn b a)))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (exists ((e BoundSet)) (( (not (Experiences d a)))) (not (Experiences e a))))))))
(check-sat)
(get-model)