(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasExperienced (BoundSet BoundSet) Bool)
(declare-fun Resets (BoundSet BoundSet) Bool)
(declare-fun Resembles (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (HasExperienced a b) (Resets b c))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (Resembles d e))))))
(check-sat)
(get-model)