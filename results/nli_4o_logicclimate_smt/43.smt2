(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun HasRisen (BoundSet) Bool)
(declare-fun Built (BoundSet BoundSet) Bool)
(declare-fun IsProneToDamage (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (HasRisen a) (and (Built b c) (IsProneToDamage d e)))))))) (exists ((a BoundSet)) (HasRisen a)))))
(check-sat)
(get-model)