(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ComparedTo (BoundSet BoundSet) Bool)
(declare-fun MadeBy (BoundSet) Bool)
(declare-fun Over (BoundSet) Bool)
(declare-fun AreUnreliable (BoundSet) Bool)
(assert (not (=> (exists ((d BoundSet)) (exists ((e BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (ComparedTo b c) (and (ComparedTo b d) (and (MadeBy c) (and (MadeBy d) (Over e))))))))) (exists ((f BoundSet)) (AreUnreliable f)))))
(check-sat)
(get-model)