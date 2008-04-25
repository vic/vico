ctx('/im') do

  get '/' do
    haml <<-HAML
    %script{ :type => "text/javascript" }
      = js 'im'
    HAML
  end

  get '/gtalk' do
    <<-HTML
    <!-- iframe src="http://guesttalkgadget.google.com/a/guest.talk.google.com/talkgadget/auth?use_guest_account=true&session=CuMCKX23BwMyL-nvQovln-0rrLFryLz7B0Dzwu7zcoNmnqvC5PKKywdamzL07NFtlO3eNRudYV2dEn45dWUoVCG3MfRMNP6Ltt44eBxqdl83-xHeRtLuU_QblllAc9fluLkofvTVX128etkNZXmSS6qpPzmrzmfLZ-G3dFIKBtuL0yw5Sdy6DPKUSJRRVh-0Ddm23Hiij0f9GvP6WBPnRbn2GvknKcW_S_fxh7BxasU_Yhicb3ZQWPUa_LFUguObuFMf4pSaLf1vx1NVk9wjzuEQDZvzBDtk98VityevrFaReR54qCmMoM8VqbSeqTDpUsVXGko2j0u_hBFtmdEEDUveE-phNQ0hW2DFa3GXiO_qFvZCg1XKqLjiE2soMpWXi7sXB3GvuT7ycSOlSDigOdg3q3cPgMXTs03UiL0zWb1R-f8mryRd9QXTTIngsqSNFWjXPpFCSMQywZPp6OWCGzFDgTZsaRIMYH5XmQ5NLQ-IXjsfGAE&host=http%3A%2F%2Fhostedtalkgadget.google.com%2Fa%2Fguest.talk.google.com%2Ftalkgadget%2Fclient%3Fsession%3DCuMCKX23BwMyL-nvQovln-0rrLFryLz7B0Dzwu7zcoNmnqvC5PKKywdamzL07NFtlO3eNRudYV2dEn45dWUoVCG3MfRMNP6Ltt44eBxqdl83-xHeRtLuU_QblllAc9fluLkofvTVX128etkNZXmSS6qpPzmrzmfLZ-G3dFIKBtuL0yw5Sdy6DPKUSJRRVh-0Ddm23Hiij0f9GvP6WBPnRbn2GvknKcW_S_fxh7BxasU_Yhicb3ZQWPUa_LFUguObuFMf4pSaLf1vx1NVk9wjzuEQDZvzBDtk98VityevrFaReR54qCmMoM8VqbSeqTDpUsVXGko2j0u_hBFtmdEEDUveE-phNQ0hW2DFa3GXiO_qFvZCg1XKqLjiE2soMpWXi7sXB3GvuT7ycSOlSDigOdg3q3cPgMXTs03UiL0zWb1R-f8mryRd9QXTTIngsqSNFWjXPpFCSMQywZPp6OWCGzFDgTZsaRIMYH5XmQ5NLQ-IXjsfGAE%26fg%3Dtrue%26closable%3Dfalse" frameborder="0" allowtransparency="true" width="200" height="300" / -->
    <!-- script src="http://gmodules.com/ig/ifr?url=http://www.google.com/ig/modules/googletalk.xml&amp;synd=open&amp;w=320&amp;h=451&amp;title=Chat+with+vic.borja%40gmail.com&amp;lang=en&amp;country=US&amp;border=http%3A%2F%2Fgmodules.com%2Fig%2Fimages%2F&amp;output=js"></script -->
    <iframe src="http://talkgadget.google.com/talkgadget/client"  frameborder="0" allowtransparency="true" width="300" height="300" />
    <p>
     Add <code>vic.borja@gmail.com</code> to your GTalk contact list.
    </p>
    <p>
     If you don't have a GTalk account, click here to open an<br>
     anonymous chat in another browser tab:
    </p>
    <iframe src="http://www.google.com/talk/service/badge/Show?tk=z01q6amlqrda3df4o1rp7kah1vgt1a8imt3jbd9bfptk1i9l7u1cbb9fdola0fop09bsa355v1qea704fnmose7da5tqqoq5e00e8e9cp9llupf6861idaa2e5o32ge2qp9b3r8c648sgnsfuh59ierpfartgro0ic9m8lvmt1ac0chti5r02k1if5iv6tv4igk&amp;w=200&amp;h=60" frameborder="0" allowtransparency="true" width="200" height="60" />
    HTML
  end
  
  get '/digsby' do
    <<-HTML
     <embed src="http://w.digsby.com/dw.swf?c=ok597i0rahry8c7a" type="application/x-shockwave-flash" wmode="transparent" width="210" height="398"></embed>
    HTML
  end

  get '/tokbox' do
    <<-HTML
      <object type="application/x-shockwave-flash" data="http://www.tokbox.com/f/jflo7ftn4s" width="428" heigeht="207"><param name="movie" value="http://www.tokbox.com/f/jflo7ftn4s"></param></object>
    HTML
  end
  
end

