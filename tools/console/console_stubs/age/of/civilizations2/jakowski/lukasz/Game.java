package age.of.civilizations2.jakowski.lukasz;

public class Game {
    public int getProvincesSize() {
        return 0;
    }

    public Province getProvince(int id) {
        return null;
    }

    public int getCivsSize() {
        return 0;
    }

    public Civilization getCiv(int id) {
        return null;
    }

    public int getPlayersSize() {
        return 0;
    }

    public Player getPlayer(int id) {
        return null;
    }

    public int getPlayerID_ByCivID(int civId) {
        return -1;
    }

    public int getActiveProvinceID() {
        return -1;
    }

    public void setActiveProvinceID(int id) {
    }

    public int getActiveCivID() {
        return 0;
    }

    public void declareWar(int a, int b, boolean flag) {
    }

    public boolean getCivsAtWar(int a, int b) {
        return false;
    }

    public void acceptPeaceOffer(int a, int b, int truce) {
    }

    public int getWarID(int a, int b) {
        return -1;
    }

    public War_GameData getWar(int index) {
        return null;
    }

    public int getWarsSize() {
        return 0;
    }

    public void removeWarData(int index) {
    }

    public void whitePeace_ReturnProvincesToRightfulOwners(int a, int b) {
    }

    public float getCivRelation_OfCivB(int a, int b) {
        return 0f;
    }

    public void setCivRelation_OfCivB(int a, int b, float relation) {
    }

    public int getCivTruce(int a, int b) {
        return 0;
    }

    public int getCivNonAggressionPact(int a, int b) {
        return 0;
    }

    public boolean getCivsAreAllied(int a, int b) {
        return false;
    }

    public boolean getCivsAreAllied_IncludeVassal(int a, int b, boolean include) {
        return false;
    }

    public boolean isAlly(int a, int b) {
        return false;
    }

    public boolean createScenarioAddCivilization(String tag, int provinceId, boolean a, boolean b, boolean c) {
        return false;
    }

    public void addPlayer(int civId) {
    }

    public void removePlayer(int playerId) {
    }

    public void buildDrawArmy() {
    }

    public void buildDrawArmy_ShowIDs() {
    }
}
