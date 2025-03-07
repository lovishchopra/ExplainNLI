(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Broke (BoundSet BoundSet) Bool)
(declare-fun Received (BoundSet BoundSet) Bool)
(declare-fun On (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (Broke d a) (and (Received d b) (On c))))))) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((x BoundSet)) (exists ((b BoundSet)) (and (Broke x a) (and (Received x b) (On c))))))))))
(check-sat)
(get-model)