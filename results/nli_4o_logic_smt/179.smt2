(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInRedShirt (BoundSet) Bool)
(declare-fun IsOnSportsField (BoundSet) Bool)
(declare-fun IsFilmed (BoundSet) Bool)
(declare-fun IsWatching (BoundSet) Bool)
(declare-fun IsCheering (BoundSet) Bool)
(declare-fun Films (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInRedShirt a) (and (IsOnSportsField a) (and (IsFilmed a) (and (IsWatching c) (IsCheering c))))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsFilmed d) (Films e d)))))))
(check-sat)
(get-model)