(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAScientist (BoundSet) Bool)
(declare-fun Studies (BoundSet BoundSet) Bool)
(declare-fun IsRelatedTo (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsAScientist a) (Studies a b)))) (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsAScientist a) (and (Studies a b) (IsRelatedTo b c)))))))))
(check-sat)
(get-model)