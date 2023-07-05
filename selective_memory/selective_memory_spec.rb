require "./selective_memory"
require "pry"

RSpec.describe "SelectiveMemory" do
  it "is an instance of Selective Memory" do
    mem = SelectiveMemory.new

    expect(mem).to be_an_instance_of(SelectiveMemory)
  end

  it "removes memories of Sara Connor and one subsequent memory" do
    mem = SelectiveMemory.new

    expect(mem.select("Albert Einstein, !Sarah Connor, Marilyn Monroe, Abraham Lincoln, Sarah Connor, Sean Connery, Marilyn Monroe, Bjarne Stroustrup, Manson Marilyn, Monroe Mary")).to eq("Albert Einstein, Abraham Lincoln, Sean Connery, Bjarne Stroustrup, Manson Marilyn, Monroe Mary")

    expect(mem.select("Bryan Joubert")).to eq("Bryan Joubert")

    expect(mem.select("Jesse Cox, !Selena Gomez")).to eq("Jesse Cox")

    expect(mem.select("!Eleena Daru, Obi-Wan Kenobi, Eleena Daru, Jar-Jar Binks")).to eq("Jar-Jar Binks")

    expect(mem.select("Digital Daggers, !Kiny Nimaj, Rack Istley, Digital Daggers, Digital Daggers")).to eq("Digital Daggers, Digital Daggers, Digital Daggers")

    expect(mem.select("!Partha Ashanti, !Mindaugas Burton, Stacy Thompson, Amor Hadrien, !Ahtahkakoop Sothy, Partha Ashanti, Uzi Griffin, Partha Ashanti, !Serhan Eutimio, Amor Hadrien, Noor Konstantin")).to eq("Uzi Griffin, Noor Konstantin")

    expect(mem.select("!Code Wars, !Doug Smith, !Cyril Lemaire, !Codin Game")).to eq("")

    expect(mem.select("Code Wars, Doug Smith, Cyril Lemaire, !Codin Game")).to eq("Code Wars, Doug Smith, Cyril Lemaire")

    expect(mem.select("Code Wars, Doug Smith, Cyril Lemaire, !Codin Game")).to eq("Code Wars, Doug Smith, Cyril Lemaire")
  

    expect(mem.select("Mpvzh Ivaohs, Kfve Dfp, Jtzrqfyusi Qfp, Utwf Idzwa, Qowl Nvecya, Jtzrqfyusi Qfp, Jtzrqfyusi Qfp, Qowl Nvecya, Takb Omakn, !Tlgqeui Uavkej, Jtzrqfyusi Qfp, Takb Omakn, Omcqdanjf Dokurgfc, Qowl Nvecya, Omcqdanjf Dokurgfc, Omcqdanjf Dokurgfc, Kfve Dfp, Tuhlqjysw Axk, Takb Omakn, Kfve Dfp, Tuhlqjysw Axk, Tlgqeui Uavkej, Tlgqeui Uavkej, Kfve Dfp, Tuhlqjysw Axk, !Takb Omakn, Omcqdanjf Dokurgfc, !Kfve Dfp, Takb Omakn, Omcqdanjf Dokurgfc, !Jtzrqfyusi Qfp, Tlgqeui Uavkej, Takb Omakn, Tlgqeui Uavkej, Kfve Dfp, Jtzrqfyusi Qfp, Qowl Nvecya, Jtzrqfyusi Qfp, Utwf Idzwa, Utwf Idzwa, Utwf Idzwa, Mpvzh Ivaohs, !Takb Omakn, Jtzrqfyusi Qfp, Utwf Idzwa, !Kfve Dfp, Onpmc Dkushfw, Mpvzh Ivaohs, Tlgqeui Uavkej, Jtzrqfyusi Qfp, Takb Omakn, Takb Omakn, Omcqdanjf Dokurgfc, Utwf Idzwa, Mpvzh Ivaohs, Tuhlqjysw Axk, Tuhlqjysw Axk, Jtzrqfyusi Qfp, Tuhlqjysw Axk, Takb Omakn, Onpmc Dkushfw, Takb Omakn, Kfve Dfp, Utwf Idzwa, Tlgqeui Uavkej, Tuhlqjysw Axk, Mpvzh Ivaohs, !Omcqdanjf Dokurgfc, Tuhlqjysw Axk, Utwf Idzwa, Omcqdanjf Dokurgfc, Mpvzh Ivaohs, Mpvzh Ivaohs, Takb Omakn, Utwf Idzwa, Mpvzh Ivaohs, Tlgqeui Uavkej, Mpvzh Ivaohs, Utwf Idzwa, Takb Omakn, Jtzrqfyusi Qfp, !Tlgqeui Uavkej, Qowl Nvecya, Tuhlqjysw Axk, !Tuhlqjysw Axk, Tlgqeui Uavkej, Omcqdanjf Dokurgfc, Kfve Dfp")).to eq("Mpvzh Ivaohs, Utwf Idzwa, Utwf Idzwa, Utwf Idzwa, Utwf Idzwa, Mpvzh Ivaohs, Utwf Idzwa, Mpvzh Ivaohs, Utwf Idzwa, Mpvzh Ivaohs, Utwf Idzwa, Mpvzh Ivaohs, Utwf Idzwa, Mpvzh Ivaohs, Mpvzh Ivaohs, Utwf Idzwa, Mpvzh Ivaohs, Mpvzh Ivaohs, Utwf Idzwa")

    expect(mem.select("Uiow Fcudrm, Uxtvz Ajlyq, !Uxtvz Ajlyq, Uxtvz Ajlyq, !Gupji Uqlyhcwk, Yulb Qgbtoe, Kmgds Qrk, Girntel Rcofvze, Iubspyvne Acqdsztovp, !Akqwl Xlsigtdc, Uiow Fcudrm, Iubspyvne Acqdsztovp, Uiow Fcudrm, Gupji Uqlyhcwk, Yulb Qgbtoe, Gupji Uqlyhcwk, Yulb Qgbtoe, Girntel Rcofvze, Bhtaeq Juf, Akqwl Xlsigtdc, Gupji Uqlyhcwk, Uiow Fcudrm, !Uiow Fcudrm, !Bhtaeq Juf, !Akqwl Xlsigtdc, !Iubspyvne Acqdsztovp, Gupji Uqlyhcwk, Jwdxltcf Nicory, Yulb Qgbtoe, Akqwl Xlsigtdc, Girntel Rcofvze, Girntel Rcofvze, Yulb Qgbtoe, Girntel Rcofvze, Bhtaeq Juf")).to eq("Kmgds Qrk, Girntel Rcofvze, Girntel Rcofvze, Jwdxltcf Nicory, Girntel Rcofvze, Girntel Rcofvze, Girntel Rcofvze")
    end
end

# Expected: "Kmgds Qrk, Girntel Rcofvze, Girntel Rcofvze, Jwdxltcf Nicory, Girntel Rcofvze, Girntel Rcofvze, Girntel Rcofvze", 

# instead got: "Kmgds Qrk, Girntel Rcofvze, Girntel Rcofvze, Girntel Rcofvze, Girntel Rcofvze, Girntel Rcofvze"