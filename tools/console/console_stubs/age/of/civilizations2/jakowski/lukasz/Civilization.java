package age.of.civilizations2.jakowski.lukasz;

public class Civilization {
    public Save_Civ_GameData civGameData;

    /** Legacy saturated mirrors (UI). */
    public int iIncomeTaxation;
    public int iIncomeProduction;
    public int iAdministrationCosts;
    public int iBudget;
    public int iMilitaryUpkeep_Total;

    /** Long ledgers — source of truth for late-game budget. */
    public long lIncomeTaxation;
    public long lIncomeProduction;
    public long lAdministrationCosts;
    public long lBudget;
    public long lMilitaryUpkeep_Total;

    public String getCivName() {
        return "";
    }

    public String getCivTag() {
        return "";
    }

    public int getCivID() {
        return 0;
    }

    public int getNumOfProvinces() {
        return 0;
    }

    public int getProvinceID(int index) {
        return -1;
    }

    public int getIdeologyID() {
        return 0;
    }

    public float getTechnologyLevel() {
        return 0f;
    }

    public int getTechnologyLevel_INT() {
        return 0;
    }

    public void setTechnologyLevel(float level) {
    }

    public void setTechnologyLevel_INT(int level) {
    }

    public long getMoney() {
        return 0L;
    }

    public void setMoney(long money) {
    }

    public int getMovePoints() {
        return 0;
    }

    public void setMovePoints(int points) {
    }

    public int getDiplomacyPoints() {
        return 0;
    }

    public void setDiplomacyPoints(int points) {
    }

    public int getManPower() {
        return 0;
    }

    public void setManPower(int manpower) {
    }

    public int getNumOfUnits() {
        return 0;
    }

    public void setNumOfUnits(int units) {
    }

    public boolean getControlledByPlayer() {
        return false;
    }

    public void setControlledByPlayer(boolean controlled) {
    }

    public int getPuppetOfCivID() {
        return 0;
    }

    public void setPuppetOfCivID(int lordCivId) {
    }

    public void setPuppetOfCivID(int lordCivId, boolean flag) {
    }

    public int getCapitalProvinceID() {
        return -1;
    }

    public void setCapitalProvinceID(int provinceId) {
    }

    public int getAllianceID() {
        return -1;
    }

    public float getRelation(int civId) {
        return 0f;
    }

    public void setRelation(int civId, float relation) {
    }

    public int getTruce(int civId) {
        return 0;
    }

    public int getNextElection() {
        return 0;
    }

    public void setNextElection(int turnId) {
    }

    public int getInReformation() {
        return 0;
    }

    public void setInReformation(int turnId) {
    }

    public float getSpendings_Goods() {
        return 0f;
    }

    public float getSpendings_Investments() {
        return 0f;
    }

    public float getSpendings_Research() {
        return 0f;
    }

    public int getLoans_GoldTotalPerTurn() {
        return 0;
    }
}
